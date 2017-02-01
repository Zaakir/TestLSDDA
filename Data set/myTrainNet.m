function trainedNet = myTrainNet(inputData,targetData)

net = newff([min(inputData)' max(inputData)'],[8,3],{'tansig' 'tansig'},'trainrp');
net.trainParam.show = 50; %Epochs between displays (NaN for no displays)    
net.trainParam.lr = 0.02; %0.01	Learning rate
net.trainParam.mc = 0.9; %Momentum constant : It is a way of using information from prior steps, not just the local surface where you are now.
net.trainParam.epochs = 10; % During iterative training of a neural network , an Epoch is a single pass through the entire training set
net.trainParam.goal = 0.01; %Performance goal
trainedNet=train(net,inputData',targetData');
sim(trainedNet,inputData')







   %What is net Object, run the myTrainNet.m and read the retured object.?
   %What are the parameters of .net?
   % What is .max_fail?
   % What are ploting functions in help nnet?
   % Complete the task, analyze it, and give the reason that why this
   % output is better than the other by changing the variables e.g.
   % learning rate, epochs.
end




















