rm -rf bin/ sbin/ lib/ &&
docker build --rm -t bxxxjxxg/ios-mount . &&
docker run -v $PWD:/output bxxxjxxg/ios-mount /bin/bash -c "cp -a /usr/local/bin /output/ && cp -a /usr/local/lib /output/ && cp -a /usr/local/sbin /output/ && cp /lib/x86_64-linux-gnu/libusb-1.0.so.0.1.0 /output/lib && cp /lib/x86_64-linux-gnu/libudev.so.1.6.4 /output/lib"
