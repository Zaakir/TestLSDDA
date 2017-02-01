function [trainedNet,error] = myTrainNet(inputData,targetData)
net = newff([min(inputData)' max(inputData)'],[8,3],{'tansig' 'tansig'},'trainrp');
myTrainNet = net




















