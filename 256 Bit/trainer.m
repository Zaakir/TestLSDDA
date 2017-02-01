function trainer = myTrainer()
                input = load('dummy.mat');
                target = load ('target.mat');
               % net = newff(input,[24,1],{'logsig','purelin'},'trainlm');
               % net = train(net,input,target);
               
               
               %R=[0 1; 0 1 ; 0 1];
               %S=[5 1];
               %net = newff([0 1;0 1 ;0 1],S,{'tansig','purelin'});
               %net=train(net,input,target);
               
               %net=newff([-1 2; 0 5],[3,1],{'tansig','purelin'},'traingd');
               %p = [1;2];
               %a = sim(net,p)
               
               %net = feedforwardnet(10)
               %net = train(net,input,target);
               %view(net)
               %y = net(input);
               %perf = perform(net,y,target)
               
               
               p = [6    63;
                   20    81;
                   9    70;
                   9    79;
                   5    78;
                   31    86;
                   14    95;
                   23    76;
                   3    62;
                   9    77];
               t = [1 0 0];

                net=newff([min(p)' max(p)'],[3,3],{'tansig','purelin'},'traingdm');
                net.trainParam.show = 50; %Epochs between displays (NaN for no displays)    
                net.trainParam.lr = 0.05; %0.01	Learning rate
                net.trainParam.mc = 0.9; %Momentum constant : It is a way of using information from prior steps, not just the local surface where you are now.
                net.trainParam.epochs = 10; % During iterative training of a neural network , an Epoch is a single pass through the entire training set
                net.trainParam.goal = 1e-5; %Performance goal
                [net,tr]=train(net,p,t);
                a = sim(net,p)
               
end

