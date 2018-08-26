export CCACHE=ccache
export DEFCONFIG=whyred-perf_defconfig
export ARCH=arm64
export CROSS_COMPILE=/run/media/majiaming/hdd1/gcc-linaro-7.2.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export OUTDIR=/run/media/majiaming/hdd1/kernel_xiaomi_whyred
#make mrproper O=$OUTDIR
make -j4 $DEFCONFIG O=$OUTDIR
make -j4 O=$OUTDIR
for i in `find -name *.ko`; do cp $i ../anykernel/modules/; done
#./dtbToolCM -s 2048 -d "qcom,msm-id = <" -2 -o arch/arm/boot/dt.img -p /usr/bin/ arch/arm/boot/
cp $OUTDIR/arch/arm64/boot/Image.gz-dtb ../anykernel/zImage
#find $objdir -name '*.ko' -exec cp -av {} ../anykernel/modules/ \;
#cd ~/anykernel/AnyKernel2
#DATE=$(date +"%m-%d-%y")
#rm *.zip
#zip -r9 ZeurionX-$DATE.zip * -x README ZeurionX-$DATE.zip
#cp Z* public_html/
