#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QDebug>

extern "C"   //ffmpeg是采用c语言实现的 c++工程种 导入c语言
{
//avcodec:编解码(最重要的库)
#include <libavcodec/avcodec.h>
    //avformat:封装格式处理
#include <libavformat/avformat.h>
    //swscale:视频像素数据格式转换
#include <libswscale/swscale.h>
    //avdevice:各种设备的输入输出
#include <libavdevice/avdevice.h>
    //avutil:工具库（大部分库都需要这个库的支持）
#include <libavutil/avutil.h>
}

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    qDebug()<<"ffmpeg----version";
    qDebug()<<avcodec_version();
}

MainWindow::~MainWindow()
{
    delete ui;
}

