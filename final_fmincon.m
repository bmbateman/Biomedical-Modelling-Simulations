%for j=1:1:1000  %this is set to run 1000 times to look at stats
    global T T1 V s1 Tcell_o Virus_o
    virusmincon=fmincon(@sse_Virus,270, [], [], [], [],1,1000);
    tcellfmincon=fmincon(@sse_Tcell,270, [], [], [], [],1,1000);
    
    [tv,xv]=ode23s(@odes,(0:7:735),[T(2) T1(2) V(2)],[],virusmincon);
    [tt,xt]=ode23s(@odes,(0:7:735),[T(2) T1(2) V(2)],[],tcellfmincon);

% Plots of code
   xtt=[xv(:,1)+xv(:,2)];
    figure()
    
    plot(tt,xtt)
    hold on
    scatter(tt,Tcell_o);
    xlabel('time (days)')
    ylabel('Concentration of Tcell (cell/mL)')
legend('Virus concentration', 'Virus noise')
    
    
    figure()
    plot(tv,xv(:,3));
    hold on
    scatter(tv,Virus_o);
    xlabel('time (days)')
    ylabel('Concentration of Virus (virons*uL/cell')
legend('Virus concentration', 'Virus noise')

% Ttest 
% 
%     XTT=xtt(:,1);
%     TTT=Tcell_o(:,1);
%     XTV=xv(:,3);
%     TTV=Virus_o(:,1);
       
            
       %stats of individual points    
%     for i=1:1:length(XTT)
%                [h(i,j),p,ci,stats] = ttest2(XTV(i,1),TTV(:,1))
%  
% 
%         i;
%         j;
%         hT=[];
%         [hT(i,j),p,ci,stats] = ttest2(XTT(i,1),TTT(i,1));
%         
%     XTV=xv(:,3);
%     TTV=Virus_o(:,1);
%        [h(i,j),p,ci,stats] = ttest2(XTV(i,1),TTV(:,1))
%         [hV(i,j),p,ci,stats] = ttest2(XTV(i,1),TTV(i,1));
%     end 
% end 
