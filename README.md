# Conditional variational autoencoder (CVAE)


This is a sample code of the conditional variational autoencoder for MATLAB.




���̃T���v����conditional variational autoencoder��MATLAB�Ŏ����������̂ł��B


# Quick start - �N�C�b�N�X�^�[�g


The following code loads the trained decoder network and generates images of all classes with the common latent vector. Here, five trials are executed by changing the latent vector. See the feature of the generated images are similar. 




���̃R�[�h�����s����ƁA�w�K�ς݂̃f�R�[�_���ǂݍ��܂�A0�|9�܂ł̎菑��������������������܂��B���ݕϐ���ς���5����s����܂��B���ꂼ��̐����͋��ʂ̐��ݕϐ����琶������Ă��܂��̂ŁA���ꂼ�ꎗ�������������Ă��܂��B


```matlab
load decoderNet.mat;
latentDim = 20;
classNum = 10;
generate_for_quickstart(decoderNet, latentDim, classNum)
```

![figure_0.png](images/figure_0.png)


![figure_1.png](images/figure_1.png)


![figure_2.png](images/figure_2.png)


![figure_3.png](images/figure_3.png)


![figure_4.png](images/figure_4.png)

# Code for training - �w�K�p�R�[�h


The code for training network and image generation will be found:




�w�K����щ摜�����p�̃T���v���R�[�h�͉��L�t�@�C�����������������B




(for English) GeneratingHanddrawnDigitsUsingConditionalVariationalAutoencoder_EN.mlx




(���{��)




GeneratingHanddrawnDigitsUsingConditionalVariationalAutoencoder_JP.mlx


# App - ���p�A�v��


App *CVAENumGen.mlapp* is available for easy trial. This load the trained decoder. It generates hand-drawn digits images from 20-dimensional latent vectors as well as above. You can change each value in the vector by the sliders, though only some of them are efficient.




�ȒP�Ɏ�����悤�A�v��(CVAENumGen.mlapp)��p�ӂ��܂����B���̃A�v���͊w�K�ς݂̃l�b�g���[�N��ǂݍ��݁A��Ɠ��l��20�����̐��ݕϐ�����A�菑�������𐶐����܂��B���ݕϐ����X���C�_�ŕς��邱�ƂŁA���������摜���ς��邱�Ƃ��ł��܂��B�������A20�����̂����傫���e��������̂͌����Ă��܂��B


