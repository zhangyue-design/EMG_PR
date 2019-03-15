%%   Design by Wang Yuan,Center for Neural Engineering,Institute of Biomedical and Health Engineering,SIAT,CAS
%     Date : 2019.02.20

%%  Description:
%   function: ѵ������
%   TrainData: ��ѵ�����������ݣ�������Ϣ�Ͷ���
%   Action_Selected: ѡ��Ķ���
%   returnData: ����Ԥ����������ݣ� Ԫ��(cell)��ʽ
%                                       sub_x
%                                    ConfusionMatrix
%                                     aveLDATestAcc
%%
function returnData = data_train(allTDCoef,targetClass,Real_Class)
     %------------------------------------����ѵ��-------------------------------------
     [aveLDATestErr,aveLDATestAcc,ConfusionMatrix,Wg,Cg] = TrainLDA(allTDCoef,targetClass,Real_Class);
     returnData{1,1} = 'aveLDATestErr';
     returnData{2,1} = aveLDATestErr;
     returnData{3,1} = 'ConfusionMatrix';
     returnData{4,1} = ConfusionMatrix;
     returnData{5,1} = 'aveLDATestAcc';
     returnData{6,1} = aveLDATestAcc;
end