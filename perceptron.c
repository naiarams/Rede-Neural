#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

//WX=WX+(ERRO X TAXA DE APRENDIZADO X ENTRADA)
//taxa de aprendizado 0.05
void treinandoPerceptronEpoca();
void treinandoPerceptronErro();
void testandoPerceptron();
void mostraFuncoes();
double peso1,peso2;1

int main(void){
    int escolha;

    do
    {
        escolha=0;
        while (escolha<1 || escolha>4)
        {
            mostraFuncoes();
            fflush(stdin);
            scanf("%d",&escolha);
        }


       switch (escolha)
       {
       case 1:
           treinandoPerceptronEpoca();
           break;
        case 2:
           treinandoPerceptronErro();
           break;
        case 3:
           testandoPerceptron();
           break;
       }
    } while (escolha!=4);

    return 0;
}
void mostraFuncoes(){
    printf("Escolha\n");
    printf("1-Treinar Funcao por epoca\n");
    printf("2-Treinar por erro\n");
    printf("3-Testar positron\n");
    printf("4-Sair\n");
}
void treinandoPerceptronEpoca(){
    double pesof1=1, pesof2=0.8, entrada1[10],entrada2[10], saida[10],saidaReal,passo;
    int epoca,i=0,j,k,sair=1;
    printf("Declare Numero de epocas\n");
    scanf("%d", &epoca);
    printf("Declare o passo\n");
    scanf("%lf", &passo);
    do
    {
        printf("Maximo 9 entradas \n");
        printf("Digite a primeira entrada(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &entrada1[i]);
        printf("Digite a segunda entrada(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &entrada2[i]);
        printf("Digite a saida(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &saida[i]);
        i++;
        printf("Digite 0 para sair\n");
        scanf("%d", &sair);
        if(i==9){
            sair=0;
        }
    } while (sair);
    for (k=0; k<epoca; k++)
    {

        for ( j=0; j <i ; j++)
        {
            saidaReal=(pesof1*entrada1[j])+(pesof2*entrada2[j]);
            pesof1=pesof1+((saida[j]-saidaReal)*passo*entrada1[j]);
             printf("Peso 1= %.4lf\n",pesof1);
            pesof2=pesof2+((saida[j]-saidaReal)*passo*entrada2[j]);
             printf("Peso 2= %.4lf\n",pesof2);
        }

    }
    printf("Peso 1= %.4lf e Peso 2 = %.4lf\n",pesof1,pesof2);
    peso1=pesof1;
    peso2=pesof2;
}
void testandoPerceptron(){
double entrada1, entrada2, saida;
int sair=1;
     do
    {
        printf("Digite a primeira entrada\n");
        scanf("%lf", &entrada1);
        printf("Digite a segunda entrada\n");
        scanf("%lf", &entrada2);
        saida=(peso1*entrada1)+(peso2*entrada2);
        printf("Saida = %.4lf\n",saida);
        printf("Digite 0 para sair\n");
        scanf("%d", &sair);
    } while (entrada1!=0);
}
void treinandoPerceptronErro(){
       double pesof1=1, pesof2=0.8, entrada1[10],entrada2[10], saida[10],saidaReal,passo;
    int i=0,j,sair=1;
    printf("Declare o passo\n");
    scanf("%lf", &passo);
    do
    {
        printf("Maximo 9 entradas \n");
        printf("Digite a primeira entrada(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &entrada1[i]);
        printf("Digite a segunda entrada(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &entrada2[i]);
        printf("Digite a saida(%d)\n",i);
        fflush(stdin);
        scanf("%lf", &saida[i]);
        i++;
        printf("Digite 0 para sair\n");
        scanf("%d", &sair);
        if(i==9){
            sair=0;
        }
    } while (sair);
    do
    {

        for ( j=0; j <i ; j++)
        {
            saidaReal=(pesof1*entrada1[j])+(pesof2*entrada2[j]);
            pesof1=pesof1+((saida[j]-saidaReal)*passo*entrada1[j]);
             printf("Peso 1= %.4lf\n",pesof1);
            pesof2=pesof2+((saida[j]-saidaReal)*passo*entrada2[j]);
             printf("Peso 2= %.4lf\n",pesof2);
        }

    }while (abs(saidaReal-saida[j])>0.001);

    printf("Peso 1= %.4lf e Peso 2 = %.4lf\n", pesof1 ,pesof2 );
    peso1=pesof1;
    peso2=pesof2;
}
