trial_num = 90;
stim_set = repelem([1:3],30); % a vector of 15 times of each condition number
stim_set = stim_set(randperm(numel(stim_set))); % shuffle condition order
% open a figure
hf=figure('Toolbar','none','Menubar','none','NumberTitle','off',...
    'Units','normalized','position',[0 0 1 1],'Color',[1 1 1]);
% display instructions
fig_text1 = text(0.5,0.5,{'In this experiment you will be presented with figures and math problems.','If the expression is equal or above 5, press K. If the expression is below 5, press S' ,'You will need to react as fast as you can.','To start the experiment please press any button'}, 'FontSize', 14, 'FontWeight', 'bold','HorizontalAlignment','center');
axis off;
pause;
clf(hf);
for i = 1:trial_num
    tic;
    if stim_set(i) == 1
        num(i) = randi(9);
        text(0.5,0.5,num2str(num(i)),'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
        axis off;
    elseif stim_set(i) == 2
        num1 =  randi(9);
        num2 =  randi(9);
        mark =  randi(2); % if mark = 1, the math problem is +, if mark = 2, the math problem is -.
        if mark == 1
            text(0.5,0.5,[num2str(num1) '+' num2str(num2)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2;
        else
            text(0.5,0.5,[num2str(num1) '-' num2str(num2)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1-num2;
        end
    else
        num1 =  randi(9);
        num2 =  randi(9);
        num3 = randi(9);
        mark = randi(4); % 1 = (+,+), 2 = (-,-), 3 = (+,-), 4 = (-,+)
        if mark == 1
            text(0.5,0.5,[num2str(num1) '+' num2str(num2) '+' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2 + num3;
        elseif mark == 2
            text(0.5,0.5,[num2str(num1) '-' num2str(num2) '-' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 - num2 - num3;
        elseif mark == 3
            text(0.5,0.5,[num2str(num1) '+' num2str(num2) '-' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2 - num3;
        else
            text(0.5,0.5,[num2str(num1) '-' num2str(num2) '+' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 - num2 + num3;
        end        
    end
    pause;trial_num = 90;
stim_set = repelem([1:3],30); % a vector of 15 times of each condition number
stim_set = stim_set(randperm(numel(stim_set))); % shuffle condition order
% open a figure
hf=figure('Toolbar','none','Menubar','none','NumberTitle','off',...
    'Units','normalized','position',[0 0 1 1],'Color',[1 1 1]);
% display instructions
fig_text1 = text(0.5,0.5,{'In this experiment you will be presented with figures and math problems.','If the expression is equal or above 5, press K. If the expression is below 5, press S' ,'You will need to react as fast as you can.','To start the experiment please press any button'}, 'FontSize', 14, 'FontWeight', 'bold','HorizontalAlignment','center');
axis off;
pause;
clf(hf);
for i = 1:trial_num
    tic;
    if stim_set(i) == 1
        num(i) = randi(9);
        text(0.5,0.5,num2str(num(i)),'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
        axis off;
    elseif stim_set(i) == 2
        num1 =  randi(9);
        num2 =  randi(9);
        mark =  randi(2); % if mark = 1, the math problem is +, if mark = 2, the math problem is -.
        if mark == 1
            text(0.5,0.5,[num2str(num1) '+' num2str(num2)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2;
        else
            text(0.5,0.5,[num2str(num1) '-' num2str(num2)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1-num2;
        end
    else
        num1 =  randi(9);
        num2 =  randi(9);
        num3 = randi(9);
        mark = randi(4); % 1 = (+,+), 2 = (-,-), 3 = (+,-), 4 = (-,+)
        if mark == 1
            text(0.5,0.5,[num2str(num1) '+' num2str(num2) '+' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2 + num3;
        elseif mark == 2
            text(0.5,0.5,[num2str(num1) '-' num2str(num2) '-' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 - num2 - num3;
        elseif mark == 3
            text(0.5,0.5,[num2str(num1) '+' num2str(num2) '-' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 + num2 - num3;
        else
            text(0.5,0.5,[num2str(num1) '-' num2str(num2) '+' num2str(num3)],'FontSize',20,'HorizontalAlignment','center','VerticalAlignment','middle');
            axis off;
            num(i) = num1 - num2 + num3;
        end        
    end
    pause;
    res_key = get(hf,'CurrentCharacter');
    res_time = toc;
    % save responses
    responses(i,1) = stim_set(i);
    responses(i,2) = res_key;
    responses(i,3) = res_time;
    if num(i) < 5 && res_key == 115
       responses(i,4) = 1;
    elseif num(i) >= 5 && res_key == 107
       responses(i,4) = 1;
    else
        responses(i,4) = 0;
    end
    clf(hf);
end
close gcf;
save('Responses_may.mat','responses');


    res_key = get(hf,'CurrentCharacter');
    res_time = toc;
    % save responses
    responses(i,1) = stim_set(i);
    responses(i,2) = res_key;
    responses(i,3) = res_time;
    if num(i) < 5 && res_key == 115
       responses(i,4) = 1;
    elseif num(i) >= 5 && res_key == 107
       responses(i,4) = 1;
    else
        responses(i,4) = 0;
    end
    clf(hf);
end
close gcf;


cond1 = responses(responses(:,1) == 1,:);
%split conditions
cond1 = responses(responses(:,1) == 1,:);
cond2 = responses(responses(:,1) == 2,:);
cond3 = responses(responses(:,1) == 3,:);
% split responses for each condition
cond1_hit_s = cond1((cond1(:,4)==1&cond1(:,2)==115),3);
cond1_miss_s = cond1((cond1(:,4)==0&cond1(:,2)==115),3);
cond1_hit_k = cond1((cond1(:,4)==1&cond1(:,2)==107),3);
cond1_miss_k = cond1((cond1(:,4)==0&cond1(:,2)==107),3);

cond2_hit_s = cond2((cond2(:,4)==1&cond2(:,2)==115),3);
cond2_miss_s = cond2((cond2(:,4)==0&cond2(:,2)==115),3);
cond2_hit_k = cond2((cond2(:,4)==1&cond2(:,2)==107),3);
cond2_miss_k = cond2((cond2(:,4)==0&cond2(:,2)==107),3);

cond3_hit_s = cond3((cond3(:,4)==1&cond3(:,2)==115),3);
cond3_miss_s = cond3((cond3(:,4)==0&cond3(:,2)==115),3);
cond3_hit_k = cond3((cond3(:,4)==1&cond3(:,2)==107),3);
cond3_miss_k = cond3((cond3(:,4)==0&cond3(:,2)==107),3);

mean_rt_cond1 = [mean(cond1_hit_s) mean(cond1_miss_s) mean(cond1_hit_k) mean(cond1_miss_k)];
mean_rt_cond2 = [mean(cond2_hit_s) mean(cond2_miss_s) mean(cond2_hit_k) mean(cond2_miss_k)];
mean_rt_cond3 = [mean(cond3_hit_s) mean(cond3_miss_s) mean(cond3_hit_k) mean(cond3_miss_k)];

figure();
subplot(1,2,1);
bar([mean_rt_cond1' mean_rt_cond2' mean_rt_cond3']);
xticklabels({'<5 Hit','<5 Miss','>5 Hit','>5 Miss'});
legend('cond1','cond2','cond3');
title('mean reaction time for each reaction type');
ylabel('time[seconds]');
subplot(1,2,2);
bar([mean(cond1(:,3)) mean(cond2(:,3)) mean(cond3(:,3))]);
hold on;
errorbar([mean(cond1(:,3)) mean(cond2(:,3)) mean(cond3(:,3))],[std(cond1(:,3)) std(cond2(:,3)) std(cond3(:,3))],'Marker','+','Color','k')
title('mean reaction time for each condition');
ylabel('time[seconds]');


