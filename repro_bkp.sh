export CLASSPATH=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d:/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/classes/0/test/lib:/wf/Shenandoah/test/lib:/wf/tools/jtreg/lib/javatest.jar:/wf/tools/jtreg/lib/jtreg.jar:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_hotspot_gc_shenandoah/classes/1/gc/shenandoah/TestAllocIntArrays_generational.d/


for i in `seq 100` ; do

    echo "----------- STARTING --------------------"

    /wf/Shenandoah/build/linux-x86_64-server-release/images/jdk/bin/java \
        -Djdk.test.lib.random.seed=-5698883077588024244 \
        -Dtest.vm.opts='-XX:MaxRAMPercentage=1.5625 -Dtest.boot.jdk=/wf/tools/jdk-23+37 -Djava.io.tmpdir=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/tmp' \
        -Dtest.tool.vm.opts='-J-XX:MaxRAMPercentage=1.5625 -J-Djdk.test.lib.random.seed=-5698883077588024244 -J-Dtest.boot.jdk=/wf/tools/jdk-23+37 -J-Djava.io.tmpdir=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/tmp' \
        -Dtest.compiler.opts= \
        -Dtest.java.opts= \
        -Dtest.jdk=/wf/Shenandoah/build/linux-x86_64-server-release/images/jdk \
        -Dcompile.jdk=/wf/Shenandoah/build/linux-x86_64-server-release/images/jdk \
        -Dtest.timeout.factor=4.0 \
        -Dtest.nativepath=/wf/Shenandoah/build/linux-x86_64-server-release/images/test/hotspot/jtreg/native \
        -Dtest.root=/wf/Shenandoah/test/hotspot/jtreg \
        -Dtest.name=gc/shenandoah/TestAllocIntArrays.java#generational \
        -Dtest.verbose=Verbose[p=SUMMARY,f=FULL,e=FULL,t=false,m=false] \
        -Dtest.file=/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah/TestAllocIntArrays.java \
        -Dtest.src=/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah \
        -Dtest.src.path=/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah:/wf/Shenandoah/test/lib \
        -Dtest.classes=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d \
        -Dtest.class.path=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/classes/0/test/lib \
        -Dtest.class.path.prefix=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d:/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/classes/0/test/lib \
        -XX:MaxRAMPercentage=1.5625 \
        -Dtest.boot.jdk=/wf/tools/jdk-23+37 \
        -Djava.io.tmpdir=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/tmp \
        -Djava.library.path=/wf/Shenandoah/build/linux-x86_64-server-release/images/test/hotspot/jtreg/native \
        -XX:+UnlockDiagnosticVMOptions \
        -XX:+UnlockExperimentalVMOptions \
        -Xmx1g \
        -Xms1g \
        -XX:+UseShenandoahGC \
        -XX:ShenandoahGCHeuristics=adaptive \
        -XX:ShenandoahGCMode=generational \
        -XX:+ShenandoahVerify \
        com.sun.javatest.regtest.agent.MainWrapper /wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d/main.0.jta
            
    echo "-----------  DONE  --------------------"

done
