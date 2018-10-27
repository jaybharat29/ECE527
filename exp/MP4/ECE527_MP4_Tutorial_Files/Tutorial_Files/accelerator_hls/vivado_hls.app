<project xmlns="com.autoesl.autopilot.project" name="accelerator_hls" top="conv1">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../images.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../labels.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../lenet_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="../params.bin" sc="0" tb="1" cflags=" -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"/>
        <file name="accelerator_hls/accelerator.cpp" sc="0" tb="false" cflags=""/>
        <file name="accelerator_hls/lenet.h" sc="0" tb="false" cflags=""/>
        <file name="accelerator_hls/lenet_acc.cpp" sc="0" tb="false" cflags=""/>
        <file name="accelerator_hls/lenet_gold.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <solutions xmlns="">
        <solution name="vector_multiplier" status="inactive"/>
        <solution name="lenet" status="inactive"/>
        <solution name="lenet2" status="inactive"/>
        <solution name="lenet3" status="inactive"/>
        <solution name="lenet4" status="active"/>
    </solutions>
</project>

