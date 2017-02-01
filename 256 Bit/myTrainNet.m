function trainedNet = myTrainNet(inputData,targetData)

%net = newff([min(inputData)' max(inputData)'],[8,3],{'tansig' 'tansig'},'trainrp');
%net.trainParam.show = 5; %Epochs between displays (NaN for no displays)    
%net.trainParam.lr = 0.05; %0.01	Learning rate
%net.trainParam.mc = 0.9; %Momentum constant : It is a way of using information from prior steps, not just the local surface where you are now.
%net.trainParam.epochs = 100; % During iterative training of a neural network , an Epoch is a single pass through the entire training set
%net.trainParam.goal = 0.01; %Performance goal




net = newff([min(inputData)' max(inputData)'],[8 3],{'tansig' 'tansig'}, 'traingd', 'learngd', 'mse');
net.trainParam.show = 5; %Epochs between displays (NaN for no displays)
%net.trainParam.lr = 0; %Best performance 0.57239 at epoch 0
%net.trainParam.lr = 1;   %Best performance 0.42952 at epoch 30
%net.trainParam.lr = 0.05;   %Best performance 0.0094666 at epoch 46
%net.trainParam.lr = 0.02;   %Best performance 0.25 at epoch 100
net.trainParam.lr = 0.01;   %Best performance 0.076605 at epoch 99
net.trainParam.mc = 0.9; %Momentum constant : It is a way of using information from prior steps, not just the local surface where you are now.
net.trainParam.epochs = 100; % During iterative training of a neural network , an Epoch is a single pass through the entire training set
net.trainParam.goal = 0.01; %Performance goal
view(net)
trainedNet=train(net,inputData',targetData') 
sim(net,inputData')

Error = 0;
   %What is net Object, run the myTrainNet.m and read the retured object.?
   %What are the parameters of .net?
   % What is .max_fail?
   % What are ploting functions in help nnet?
   % Complete the task, analyze it, and give the reason that why this
   % output is better than the other by changing the variables e.g.
   % learning rate, epochs.
   
end




















