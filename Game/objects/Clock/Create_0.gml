bpm = [{time:0,value:120}] //这里是一个数组，包含了BPM节点
time_ms = 0 //音乐播放了多长时间？单位是毫秒(MS)
beat = 0 //当前是第几拍
pausing = false //是否暂停音乐
offset = 0.00 //延迟数：无论是什么音频系统，播放音频都带有延迟，因此需要这个。
 
 
// 以下所有函数都可以不用管理
function time_to_beat_bpm(time,bpm){
	var crotchet = bpm / 60.0
	return time*crotchet/1000000.0
}
function beat_to_time_bpm(beat,bpm){
	var crotchet = 60.0 / bpm
	return beat*crotchet*1000000.0
	
}
function time_get_bpm_by_time(time){
	for(var i=0;i<array_length(bpm);i++){
		var bpmtime = bpm[i].time
		if(bpmtime == time){
			return i
		}
	}
}
function time_to_beat(time){
	var bpmStu = time_get_previous_bpm(time)
	var beattime = bpmStu.time
	var vaule = bpmStu.value
	var willTime = time - beattime
	var beatcz = time_to_beat_bpm(willTime,vaule)
	if(time == 0){
		return 0
	}
	return time_to_beat(beattime) + beatcz
}
function beat_to_time(beat){
	var time = 0
	for(var i = 0;i<array_length(bpm);i++){
		var bpmtime = bpm[i].time
		time = bpmtime
		if(time_to_beat(time)>beat){
			break
		}
	}
	var prebpm = time_get_previous_bpm(time)
	return prebpm.time + beat_to_time_bpm(beat-time_to_beat(prebpm.time),prebpm.value)
}
function time_get_previous_bpm(time){
	var maxBPM = 0
	for(var i = 0;i<array_length(bpm);i++){
		var bpmtime = bpm[i].time
		if(bpmtime<time){
			maxBPM = maxBPM < bpmtime ? bpmtime : maxBPM
		}
	}
	var bpmListID = time_get_bpm_by_time(maxBPM)
	var bpmStu = bpm[bpmListID]
	
	return bpmStu
}
function reset_time(time){
	time_ms = time * 1000000 + offset
}