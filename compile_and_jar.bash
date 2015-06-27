
javac -cp libs/\*:libs/guava/guava-14.0.1.jar src/org/Firefuzzer/Fire/BufferOverflow.java src/org/Firefuzzer/Fire/SQLInjection.java src/org/Firefuzzer/Fire/Firefuzzer.java

cp libs/* build

cp libs/guava/guava-14.0.1.jar build

cp -r src/org build

# rm -r build/org/Firefuzzer/impl/ build/org/Firefuzzer/service/

rm build/org/Firefuzzer/Fire/*.java

cp src/inject.conf src/log4j.properties build

cp ./MANIFEST.MF build

jar -cvfm build/Firefuzzer.jar build/MANIFEST.MF build

cp build/Firefuzzer.jar ./

rm -r build

mkdir build

mv Firefuzzer.jar build

rm -r src/org/Firefuzzer/Fire/*.class

