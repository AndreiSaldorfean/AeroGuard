<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="Arduino-clone">
<description>Arduino Clone pinheaders
By cl@xganon.com
http://www.xganon.com</description>
<packages>
<package name="NANO">
<pad name="TX0" x="5.08" y="-8.89" drill="0.8" shape="long"/>
<pad name="RX1" x="5.08" y="-6.35" drill="0.8" shape="long"/>
<pad name="RST1" x="5.08" y="-3.81" drill="0.8" shape="long"/>
<pad name="GND1" x="5.08" y="-1.27" drill="0.8" shape="long"/>
<pad name="D2" x="5.08" y="1.27" drill="0.8" shape="long"/>
<pad name="D3" x="5.08" y="3.81" drill="0.8" shape="long"/>
<pad name="D4" x="5.08" y="6.35" drill="0.8" shape="long"/>
<pad name="D5" x="5.08" y="8.89" drill="0.8" shape="long"/>
<pad name="D6" x="5.08" y="11.43" drill="0.8" shape="long"/>
<pad name="D7" x="5.08" y="13.97" drill="0.8" shape="long"/>
<pad name="D8" x="5.08" y="16.51" drill="0.8" shape="long"/>
<pad name="D9" x="5.08" y="19.05" drill="0.8" shape="long"/>
<pad name="RAW" x="-10.16" y="-8.89" drill="0.8" shape="long"/>
<pad name="GND" x="-10.16" y="-6.35" drill="0.8" shape="long"/>
<pad name="RST" x="-10.16" y="-3.81" drill="0.8" shape="long"/>
<pad name="A3" x="-10.16" y="11.43" drill="0.8" shape="long"/>
<pad name="A2" x="-10.16" y="13.97" drill="0.8" shape="long"/>
<pad name="A1" x="-10.16" y="16.51" drill="0.8" shape="long"/>
<pad name="A0" x="-10.16" y="19.05" drill="0.8" shape="long"/>
<pad name="D13" x="-10.16" y="26.67" drill="0.8" shape="long"/>
<pad name="D12" x="5.08" y="26.67" drill="0.8" shape="long"/>
<pad name="D11" x="5.08" y="24.13" drill="0.8" shape="long"/>
<pad name="D10" x="5.08" y="21.59" drill="0.8" shape="long"/>
<pad name="3.3V" x="-10.16" y="24.13" drill="0.8" shape="long" rot="R180"/>
<pad name="AREF" x="-10.16" y="21.59" drill="0.8" shape="long" rot="R180"/>
<pad name="5V" x="-10.16" y="-1.27" drill="0.8" shape="long"/>
<pad name="ICSP2" x="-5.08" y="-7.62" drill="0.8" rot="R90"/>
<pad name="ICSP4" x="-2.54" y="-7.62" drill="0.8" rot="R90"/>
<pad name="ICSP6" x="0" y="-7.62" drill="0.8" rot="R90"/>
<pad name="A4" x="-10.16" y="8.89" drill="0.8" shape="long" rot="R180"/>
<pad name="A5" x="-10.16" y="6.35" drill="0.8" shape="long" rot="R180"/>
<pad name="A6" x="-10.16" y="3.81" drill="0.8" shape="long" rot="R180"/>
<pad name="A7" x="-10.16" y="1.27" drill="0.8" shape="long" rot="R180"/>
<pad name="ICSP1" x="-5.08" y="-10.16" drill="0.8" rot="R90"/>
<pad name="ICSP3" x="-2.54" y="-10.16" drill="0.8" rot="R90"/>
<pad name="ICSP5" x="0" y="-10.16" drill="0.8" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="NANO">
<pin name="3.3V" x="-22.86" y="12.7" visible="pin" length="middle"/>
<pin name="AREF" x="-22.86" y="10.16" visible="pin" length="middle"/>
<pin name="ICSP1" x="-10.16" y="-27.94" visible="off" length="point" rot="R270"/>
<pin name="ICSP2" x="-10.16" y="-25.4" visible="off" length="point" rot="R270"/>
<pin name="ICSP3" x="-7.62" y="-27.94" visible="off" length="point" rot="R270"/>
<pin name="ICSP4" x="-7.62" y="-25.4" visible="off" length="point" rot="R270"/>
<pin name="TX0" x="10.16" y="-20.32" visible="pin" length="middle" rot="R180"/>
<pin name="RX1" x="10.16" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="RST1" x="10.16" y="-15.24" visible="pin" length="middle" rot="R180"/>
<pin name="GND2" x="10.16" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="D2" x="10.16" y="-10.16" visible="pin" length="middle" rot="R180"/>
<pin name="D3" x="10.16" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="D4" x="10.16" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="D5" x="10.16" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="D6" x="10.16" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="D7" x="10.16" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="D8" x="10.16" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="D9" x="10.16" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="RAW" x="-22.86" y="-20.32" visible="pin" length="middle"/>
<pin name="GND" x="-22.86" y="-17.78" visible="pin" length="middle"/>
<pin name="RST" x="-22.86" y="-15.24" visible="pin" length="middle"/>
<pin name="5" x="-22.86" y="-12.7" visible="pin" length="middle"/>
<pin name="A3" x="-22.86" y="0" visible="pin" length="middle"/>
<pin name="A2" x="-22.86" y="2.54" visible="pin" length="middle"/>
<pin name="A1" x="-22.86" y="5.08" visible="pin" length="middle"/>
<pin name="A0" x="-22.86" y="7.62" visible="pin" length="middle"/>
<pin name="D13" x="-22.86" y="15.24" visible="pin" length="middle"/>
<pin name="D12" x="10.16" y="15.24" visible="pin" length="middle" rot="R180"/>
<pin name="D11" x="10.16" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="D10" x="10.16" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="A7" x="-22.86" y="-10.16" visible="pin" length="middle"/>
<pin name="A6" x="-22.86" y="-7.62" visible="pin" length="middle"/>
<pin name="A5" x="-22.86" y="-5.08" visible="pin" length="middle"/>
<pin name="A4" x="-22.86" y="-2.54" visible="pin" length="middle"/>
<pin name="ICSP5" x="-5.08" y="-27.94" visible="off" length="point" rot="R270"/>
<pin name="ICSP6" x="-5.08" y="-25.4" visible="off" length="point" rot="R270"/>
<wire x1="-17.78" y1="17.78" x2="-17.78" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-30.48" x2="5.08" y2="-30.48" width="0.254" layer="94"/>
<wire x1="5.08" y1="-30.48" x2="5.08" y2="17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="17.78" x2="-17.78" y2="17.78" width="0.254" layer="94"/>
<text x="-12.7" y="20.32" size="1.778" layer="95">Arduino Nano</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="NANO">
<description>Arduino Nano</description>
<gates>
<gate name="G$1" symbol="NANO" x="7.62" y="2.54"/>
</gates>
<devices>
<device name="" package="NANO">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND2" pad="GND1"/>
<connect gate="G$1" pin="ICSP1" pad="ICSP1"/>
<connect gate="G$1" pin="ICSP2" pad="ICSP2"/>
<connect gate="G$1" pin="ICSP3" pad="ICSP3"/>
<connect gate="G$1" pin="ICSP4" pad="ICSP4"/>
<connect gate="G$1" pin="ICSP5" pad="ICSP5"/>
<connect gate="G$1" pin="ICSP6" pad="ICSP6"/>
<connect gate="G$1" pin="RAW" pad="RAW"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RST1" pad="RST1"/>
<connect gate="G$1" pin="RX1" pad="RX1"/>
<connect gate="G$1" pin="TX0" pad="TX0"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MQ-135(test)">
<description>Senzor calitate aer de tip MQ-135(model test)</description>
<packages>
<package name="FOOT">
<pad name="A0" x="-3.81" y="1.27" drill="0.6" shape="square"/>
<pad name="D0" x="-2.54" y="1.27" drill="0.6" shape="square"/>
<pad name="GND" x="-1.27" y="1.27" drill="0.6" shape="square"/>
<pad name="VCC" x="0" y="1.27" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="SIM">
<description>Senzor calitate aer MQ-135</description>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="22.86" y2="-10.16" width="0.254" layer="94"/>
<wire x1="22.86" y1="-10.16" x2="22.86" y2="7.62" width="0.254" layer="94"/>
<wire x1="22.86" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<circle x="15.24" y="0" radius="5.6796125" width="0.254" layer="94"/>
<pin name="VCC" x="-10.16" y="-5.08" length="middle"/>
<pin name="GND" x="-10.16" y="-2.54" length="middle"/>
<pin name="D0" x="-10.16" y="0" length="middle"/>
<pin name="A0" x="-10.16" y="2.54" length="middle"/>
<wire x1="12.7" y1="5.08" x2="12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="15.24" y1="5.08" x2="15.24" y2="-5.08" width="0.254" layer="94"/>
<wire x1="17.78" y1="5.08" x2="17.78" y2="-5.08" width="0.254" layer="94"/>
<wire x1="10.16" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="20.32" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="-2.54" x2="20.32" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="5.08" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<text x="5.08" y="10.16" size="1.778" layer="95">MQ-135</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DEV">
<gates>
<gate name="G$1" symbol="SIM" x="0" y="10.16"/>
</gates>
<devices>
<device name="" package="FOOT">
<connects>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-hirose" urn="urn:adsk.eagle:library:152">
<description>&lt;b&gt;Hirose Connectors&lt;/b&gt;&lt;p&gt;
www.hirose.co.jp&lt;p&gt;
Include : &lt;br&gt;
con-hirose-df12d(3.0)60dp0.5v80.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;
con-hirose.lbr from Bob Starr &amp;lt;rtzaudio@mindspring.com&amp;gt;&lt;br&gt;</description>
<packages>
<package name="UX60A-MB-5ST" urn="urn:adsk.eagle:footprint:7171/1" library_version="2">
<description>&lt;b&gt;MINI USB Connector HI-SPEED Certified&lt;/b&gt; Metal Shield SMT Type Without Positioning Post&lt;p&gt;
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<wire x1="-6.3509" y1="3.8059" x2="2.5511" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="3.8059" x2="2.5511" y2="2.5442" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="2.5442" x2="2.1866" y2="2.1797" width="0.1016" layer="21" curve="-90.031447"/>
<wire x1="2.1866" y1="2.1797" x2="1.6539" y2="2.1797" width="0.1016" layer="21"/>
<wire x1="1.6539" y1="2.1797" x2="1.2894" y2="1.8152" width="0.1016" layer="51" curve="90"/>
<wire x1="1.2894" y1="1.8152" x2="1.2894" y2="-1.8578" width="0.1016" layer="51"/>
<wire x1="1.2894" y1="-1.8578" x2="1.6118" y2="-2.1802" width="0.1016" layer="51" curve="90"/>
<wire x1="1.6118" y1="-2.1802" x2="2.2006" y2="-2.1802" width="0.1016" layer="21"/>
<wire x1="2.2006" y1="-2.1802" x2="2.5511" y2="-2.5307" width="0.1016" layer="21" curve="-90.032703"/>
<wire x1="2.5511" y1="-2.5307" x2="2.5511" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-3.8064" x2="-2.7341" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-3.8064" x2="-6.3509" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="-6.3509" y1="-3.8064" x2="-6.3509" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-3.8064" x2="2.5511" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-4.7457" x2="2.3968" y2="-4.8999" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="2.3968" y1="-4.8999" x2="2.3969" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="2.3969" y1="-4.8999" x2="2.2287" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.2287" y1="-4.7317" x2="2.2287" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="2.2287" y1="-4.5775" x2="2.0044" y2="-4.3532" width="0.1016" layer="21" curve="90.153471"/>
<wire x1="2.0044" y1="-4.3532" x2="1.9763" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="1.9763" y1="-4.3532" x2="1.752" y2="-4.5775" width="0.1016" layer="21" curve="90"/>
<wire x1="1.752" y1="-4.5775" x2="1.752" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="1.752" y1="-4.7457" x2="1.5978" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.5978" y1="-4.8999" x2="1.4296" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.4296" y1="-4.7317" x2="1.4296" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-3.8064" x2="-2.7341" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-4.7457" x2="-2.8884" y2="-4.8999" width="0.1016" layer="21" curve="-90.484765"/>
<wire x1="-2.8884" y1="-4.8999" x2="-2.8883" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="-2.8883" y1="-4.8999" x2="-3.0565" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.0565" y1="-4.7317" x2="-3.0565" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="-3.0565" y1="-4.5775" x2="-3.2808" y2="-4.3532" width="0.1016" layer="21" curve="90.153471"/>
<wire x1="-3.2808" y1="-4.3532" x2="-3.3089" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="-3.3089" y1="-4.3532" x2="-3.5332" y2="-4.5775" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="-3.5332" y1="-4.5775" x2="-3.5332" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-3.5332" y1="-4.7457" x2="-3.6874" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.6874" y1="-4.8999" x2="-3.8556" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.8556" y1="-4.7317" x2="-3.8556" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-3.8555" y1="3.8058" x2="-3.8555" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-3.8555" y1="4.7451" x2="-3.7012" y2="4.8993" width="0.1016" layer="21" curve="-90.484765"/>
<wire x1="-3.7012" y1="4.8993" x2="-3.7013" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="-3.7013" y1="4.8993" x2="-3.5331" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.5331" y1="4.7311" x2="-3.5331" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="-3.5331" y1="4.5769" x2="-3.3088" y2="4.3526" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-3.3088" y1="4.3526" x2="-3.2807" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="-3.2807" y1="4.3526" x2="-3.0564" y2="4.5769" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-3.0564" y1="4.5769" x2="-3.0564" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-3.0564" y1="4.7451" x2="-2.9022" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.9022" y1="4.8993" x2="-2.734" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.734" y1="4.7311" x2="-2.734" y2="3.8619" width="0.1016" layer="21"/>
<wire x1="1.4297" y1="3.8058" x2="1.4297" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="1.4297" y1="4.7451" x2="1.584" y2="4.8993" width="0.1016" layer="21" curve="-90.335171"/>
<wire x1="1.584" y1="4.8993" x2="1.5839" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="1.5839" y1="4.8993" x2="1.7521" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.7521" y1="4.7311" x2="1.7521" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="1.7521" y1="4.5769" x2="1.9764" y2="4.3526" width="0.1016" layer="21" curve="90"/>
<wire x1="1.9764" y1="4.3526" x2="2.0045" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="2.0045" y1="4.3526" x2="2.2288" y2="4.5769" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="2.2288" y1="4.5769" x2="2.2288" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="2.2288" y1="4.7451" x2="2.383" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.383" y1="4.8993" x2="2.5512" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.5512" y1="4.7311" x2="2.5512" y2="3.7918" width="0.1016" layer="21"/>
<wire x1="-5.1593" y1="3.7498" x2="-5.1593" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-5.1593" y1="2.2077" x2="-4.8088" y2="1.8572" width="0.1016" layer="21" curve="90.032703"/>
<wire x1="-4.8088" y1="1.8572" x2="-4.7668" y2="1.8572" width="0.1016" layer="21"/>
<wire x1="-4.7668" y1="1.8572" x2="-1.0938" y2="1.689" width="0.1016" layer="21"/>
<wire x1="-1.0938" y1="1.689" x2="-1.0798" y2="1.9834" width="0.1016" layer="21" curve="179.766458"/>
<wire x1="-1.0798" y1="1.9834" x2="-4.4724" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-4.4724" y1="2.2077" x2="-4.4584" y2="2.6984" width="0.1016" layer="21" curve="-175.705121"/>
<wire x1="-4.4584" y1="2.6984" x2="-1.0518" y2="2.9227" width="0.1016" layer="21"/>
<wire x1="-1.0518" y1="2.9227" x2="-0.9396" y2="3.0488" width="0.1016" layer="21" curve="89.143172"/>
<wire x1="-0.9396" y1="3.0488" x2="-0.9396" y2="3.7498" width="0.1016" layer="21"/>
<wire x1="-0.6452" y1="0.7497" x2="-0.9817" y2="1.0862" width="0.1016" layer="21" curve="89.931933"/>
<wire x1="-0.9817" y1="1.0862" x2="-5.0051" y2="1.2965" width="0.1016" layer="21"/>
<wire x1="-5.0051" y1="1.2965" x2="-5.0191" y2="1.0301" width="0.1016" layer="21" curve="180"/>
<wire x1="-5.0191" y1="1.0301" x2="-1.9069" y2="0.8619" width="0.1016" layer="21"/>
<wire x1="-1.9069" y1="0.8619" x2="-1.4723" y2="0.4273" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.4723" y1="0.4273" x2="-1.4723" y2="-0.4559" width="0.1016" layer="21"/>
<wire x1="-1.4723" y1="-0.4559" x2="-1.8929" y2="-0.8765" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.8929" y1="-0.8765" x2="-1.963" y2="-0.8765" width="0.1016" layer="21"/>
<wire x1="-1.963" y1="-0.8765" x2="-5.0051" y2="-1.0167" width="0.1016" layer="21"/>
<wire x1="-5.0051" y1="-1.0167" x2="-5.0051" y2="-1.297" width="0.1016" layer="21" curve="174.689178"/>
<wire x1="-5.0051" y1="-1.297" x2="-1.0097" y2="-1.0868" width="0.1016" layer="21"/>
<wire x1="-1.0097" y1="-1.0868" x2="-0.6452" y2="-0.7223" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.6452" y1="-0.7223" x2="-0.6452" y2="0.7497" width="0.1016" layer="21"/>
<wire x1="-5.1592" y1="-3.7504" x2="-5.1592" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-5.1592" y1="-2.2083" x2="-4.8087" y2="-1.8578" width="0.1016" layer="21" curve="-89.967316"/>
<wire x1="-4.8087" y1="-1.8578" x2="-4.7667" y2="-1.8578" width="0.1016" layer="21"/>
<wire x1="-4.7667" y1="-1.8578" x2="-1.0937" y2="-1.6896" width="0.1016" layer="21"/>
<wire x1="-1.0937" y1="-1.6896" x2="-1.0797" y2="-1.984" width="0.1016" layer="21" curve="-179.766458"/>
<wire x1="-1.0797" y1="-1.984" x2="-4.4723" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-4.4723" y1="-2.2083" x2="-4.4583" y2="-2.699" width="0.1016" layer="21" curve="175.705121"/>
<wire x1="-4.4583" y1="-2.699" x2="-1.0517" y2="-2.9233" width="0.1016" layer="21"/>
<wire x1="-1.0517" y1="-2.9233" x2="-0.9395" y2="-3.0494" width="0.1016" layer="21" curve="-89.143172"/>
<wire x1="-0.9395" y1="-3.0494" x2="-0.9395" y2="-3.7504" width="0.1016" layer="21"/>
<smd name="M3" x="2" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M4" x="2" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M2" x="-3.3" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M1" x="-3.3" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="1" x="2.25" y="1.6" dx="2" dy="0.5" layer="1"/>
<smd name="2" x="2.25" y="0.8" dx="2" dy="0.5" layer="1"/>
<smd name="3" x="2.25" y="0" dx="2" dy="0.5" layer="1"/>
<smd name="4" x="2.25" y="-0.8" dx="2" dy="0.5" layer="1"/>
<smd name="5" x="2.25" y="-1.6" dx="2" dy="0.5" layer="1"/>
<text x="5.08" y="-4.445" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-4.445" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.3034" y1="1.4367" x2="2.6072" y2="1.7731" layer="51"/>
<rectangle x1="1.3034" y1="0.6376" x2="2.6072" y2="0.974" layer="51"/>
<rectangle x1="1.3034" y1="-0.1615" x2="2.6072" y2="0.1749" layer="51"/>
<rectangle x1="1.3034" y1="-0.9606" x2="2.6072" y2="-0.6242" layer="51"/>
<rectangle x1="1.3034" y1="-1.7596" x2="2.6072" y2="-1.4232" layer="51"/>
<rectangle x1="-6.4" y1="-3.85" x2="-4.425" y2="3.85" layer="41"/>
<rectangle x1="-2.175" y1="-3.85" x2="-0.45" y2="3.85" layer="41"/>
<rectangle x1="-4.425" y1="-2.925" x2="-2.175" y2="2.925" layer="41"/>
<rectangle x1="-0.45" y1="-1.85" x2="1.225" y2="1.85" layer="41"/>
</package>
<package name="UX60-MB-5ST" urn="urn:adsk.eagle:footprint:7173/1" library_version="2">
<description>&lt;b&gt;MINI USB Connector HI-SPEED Certified&lt;/b&gt; Metal Shield SMT Type With Positioning Post&lt;p&gt;
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<wire x1="-6.3509" y1="3.8059" x2="2.5511" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="3.8059" x2="2.5511" y2="2.5442" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="2.5442" x2="2.1866" y2="2.1797" width="0.1016" layer="21" curve="-90.031447"/>
<wire x1="2.1866" y1="2.1797" x2="1.6539" y2="2.1797" width="0.1016" layer="21"/>
<wire x1="1.6539" y1="2.1797" x2="1.2894" y2="1.8152" width="0.1016" layer="51" curve="90"/>
<wire x1="1.2894" y1="1.8152" x2="1.2894" y2="-1.8578" width="0.1016" layer="51"/>
<wire x1="1.2894" y1="-1.8578" x2="1.6118" y2="-2.1802" width="0.1016" layer="51" curve="90"/>
<wire x1="1.6118" y1="-2.1802" x2="2.2006" y2="-2.1802" width="0.1016" layer="21"/>
<wire x1="2.2006" y1="-2.1802" x2="2.5511" y2="-2.5307" width="0.1016" layer="21" curve="-90.032703"/>
<wire x1="2.5511" y1="-2.5307" x2="2.5511" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-3.8064" x2="-2.7341" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-3.8064" x2="-6.3509" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="-6.3509" y1="-3.8064" x2="-6.3509" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-3.8064" x2="2.5511" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="2.5511" y1="-4.7457" x2="2.3968" y2="-4.8999" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="2.3968" y1="-4.8999" x2="2.3969" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="2.3969" y1="-4.8999" x2="2.2287" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.2287" y1="-4.7317" x2="2.2287" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="2.2287" y1="-4.5775" x2="2.0044" y2="-4.3532" width="0.1016" layer="21" curve="90.153471"/>
<wire x1="2.0044" y1="-4.3532" x2="1.9763" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="1.9763" y1="-4.3532" x2="1.752" y2="-4.5775" width="0.1016" layer="21" curve="90"/>
<wire x1="1.752" y1="-4.5775" x2="1.752" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="1.752" y1="-4.7457" x2="1.5978" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.5978" y1="-4.8999" x2="1.4296" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.4296" y1="-4.7317" x2="1.4296" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-3.8064" x2="-2.7341" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-2.7341" y1="-4.7457" x2="-2.8884" y2="-4.8999" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="-2.8884" y1="-4.8999" x2="-2.8883" y2="-4.8999" width="0.1016" layer="21"/>
<wire x1="-2.8883" y1="-4.8999" x2="-3.0565" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.0565" y1="-4.7317" x2="-3.0565" y2="-4.5775" width="0.1016" layer="21"/>
<wire x1="-3.0565" y1="-4.5775" x2="-3.2808" y2="-4.3532" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-3.2808" y1="-4.3532" x2="-3.3089" y2="-4.3532" width="0.1016" layer="21"/>
<wire x1="-3.3089" y1="-4.3532" x2="-3.5332" y2="-4.5775" width="0.1016" layer="21" curve="89.948934"/>
<wire x1="-3.5332" y1="-4.5775" x2="-3.5332" y2="-4.7457" width="0.1016" layer="21"/>
<wire x1="-3.5332" y1="-4.7457" x2="-3.6874" y2="-4.8999" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.6874" y1="-4.8999" x2="-3.8556" y2="-4.7317" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.8556" y1="-4.7317" x2="-3.8556" y2="-3.8625" width="0.1016" layer="21"/>
<wire x1="-3.8555" y1="3.8058" x2="-3.8555" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-3.8555" y1="4.7451" x2="-3.7012" y2="4.8993" width="0.1016" layer="21" curve="-90.409919"/>
<wire x1="-3.7012" y1="4.8993" x2="-3.7013" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="-3.7013" y1="4.8993" x2="-3.5331" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-3.5331" y1="4.7311" x2="-3.5331" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="-3.5331" y1="4.5769" x2="-3.3088" y2="4.3526" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="-3.3088" y1="4.3526" x2="-3.2807" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="-3.2807" y1="4.3526" x2="-3.0564" y2="4.5769" width="0.1016" layer="21" curve="90.102268"/>
<wire x1="-3.0564" y1="4.5769" x2="-3.0564" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="-3.0564" y1="4.7451" x2="-2.9022" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.9022" y1="4.8993" x2="-2.734" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="-2.734" y1="4.7311" x2="-2.734" y2="3.8619" width="0.1016" layer="21"/>
<wire x1="1.4297" y1="3.8058" x2="1.4297" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="1.4297" y1="4.7451" x2="1.584" y2="4.8993" width="0.1016" layer="21" curve="-90.335171"/>
<wire x1="1.584" y1="4.8993" x2="1.5839" y2="4.8993" width="0.1016" layer="21"/>
<wire x1="1.5839" y1="4.8993" x2="1.7521" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="1.7521" y1="4.7311" x2="1.7521" y2="4.5769" width="0.1016" layer="21"/>
<wire x1="1.7521" y1="4.5769" x2="1.9764" y2="4.3526" width="0.1016" layer="21" curve="90"/>
<wire x1="1.9764" y1="4.3526" x2="2.0045" y2="4.3526" width="0.1016" layer="21"/>
<wire x1="2.0045" y1="4.3526" x2="2.2288" y2="4.5769" width="0.1016" layer="21" curve="90.051111"/>
<wire x1="2.2288" y1="4.5769" x2="2.2288" y2="4.7451" width="0.1016" layer="21"/>
<wire x1="2.2288" y1="4.7451" x2="2.383" y2="4.8993" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.383" y1="4.8993" x2="2.5512" y2="4.7311" width="0.1016" layer="21" curve="-90"/>
<wire x1="2.5512" y1="4.7311" x2="2.5512" y2="3.7918" width="0.1016" layer="21"/>
<wire x1="-5.1593" y1="3.7498" x2="-5.1593" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-5.1593" y1="2.2077" x2="-4.8088" y2="1.8572" width="0.1016" layer="21" curve="90.032703"/>
<wire x1="-4.8088" y1="1.8572" x2="-4.7668" y2="1.8572" width="0.1016" layer="21"/>
<wire x1="-4.7668" y1="1.8572" x2="-1.0938" y2="1.689" width="0.1016" layer="21"/>
<wire x1="-1.0938" y1="1.689" x2="-1.0798" y2="1.9834" width="0.1016" layer="21" curve="179.766458"/>
<wire x1="-1.0798" y1="1.9834" x2="-4.4724" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="-4.4724" y1="2.2077" x2="-4.4584" y2="2.6984" width="0.1016" layer="21" curve="-175.705121"/>
<wire x1="-4.4584" y1="2.6984" x2="-1.0518" y2="2.9227" width="0.1016" layer="21"/>
<wire x1="-1.0518" y1="2.9227" x2="-0.9396" y2="3.0488" width="0.1016" layer="21" curve="89.143172"/>
<wire x1="-0.9396" y1="3.0488" x2="-0.9396" y2="3.7498" width="0.1016" layer="21"/>
<wire x1="-0.6452" y1="0.7497" x2="-0.9817" y2="1.0862" width="0.1016" layer="21" curve="89.965956"/>
<wire x1="-0.9817" y1="1.0862" x2="-5.0051" y2="1.2965" width="0.1016" layer="21"/>
<wire x1="-5.0051" y1="1.2965" x2="-5.0191" y2="1.0301" width="0.1016" layer="21" curve="180"/>
<wire x1="-5.0191" y1="1.0301" x2="-1.9069" y2="0.8619" width="0.1016" layer="21"/>
<wire x1="-1.9069" y1="0.8619" x2="-1.4723" y2="0.4273" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.4723" y1="0.4273" x2="-1.4723" y2="-0.4559" width="0.1016" layer="21"/>
<wire x1="-1.4723" y1="-0.4559" x2="-1.8929" y2="-0.8765" width="0.1016" layer="21" curve="-90"/>
<wire x1="-1.8929" y1="-0.8765" x2="-1.963" y2="-0.8765" width="0.1016" layer="21"/>
<wire x1="-1.963" y1="-0.8765" x2="-5.0051" y2="-1.0167" width="0.1016" layer="21"/>
<wire x1="-5.0051" y1="-1.0167" x2="-5.0051" y2="-1.297" width="0.1016" layer="21" curve="174.689178"/>
<wire x1="-5.0051" y1="-1.297" x2="-1.0097" y2="-1.0868" width="0.1016" layer="21"/>
<wire x1="-1.0097" y1="-1.0868" x2="-0.6452" y2="-0.7223" width="0.1016" layer="21" curve="90"/>
<wire x1="-0.6452" y1="-0.7223" x2="-0.6452" y2="0.7497" width="0.1016" layer="21"/>
<wire x1="-5.1592" y1="-3.7504" x2="-5.1592" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-5.1592" y1="-2.2083" x2="-4.8087" y2="-1.8578" width="0.1016" layer="21" curve="-89.967316"/>
<wire x1="-4.8087" y1="-1.8578" x2="-4.7667" y2="-1.8578" width="0.1016" layer="21"/>
<wire x1="-4.7667" y1="-1.8578" x2="-1.0937" y2="-1.6896" width="0.1016" layer="21"/>
<wire x1="-1.0937" y1="-1.6896" x2="-1.0797" y2="-1.984" width="0.1016" layer="21" curve="-179.766458"/>
<wire x1="-1.0797" y1="-1.984" x2="-4.4723" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="-4.4723" y1="-2.2083" x2="-4.4583" y2="-2.699" width="0.1016" layer="21" curve="175.705121"/>
<wire x1="-4.4583" y1="-2.699" x2="-1.0517" y2="-2.9233" width="0.1016" layer="21"/>
<wire x1="-1.0517" y1="-2.9233" x2="-0.9395" y2="-3.0494" width="0.1016" layer="21" curve="-89.143172"/>
<wire x1="-0.9395" y1="-3.0494" x2="-0.9395" y2="-3.7504" width="0.1016" layer="21"/>
<smd name="M3" x="2" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M4" x="2" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M2" x="-3.3" y="4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="M1" x="-3.3" y="-4.2" dx="2.2" dy="2.5" layer="1"/>
<smd name="1" x="2.25" y="1.6" dx="2" dy="0.5" layer="1"/>
<smd name="2" x="2.25" y="0.8" dx="2" dy="0.5" layer="1"/>
<smd name="3" x="2.25" y="0" dx="2" dy="0.5" layer="1"/>
<smd name="4" x="2.25" y="-0.8" dx="2" dy="0.5" layer="1"/>
<smd name="5" x="2.25" y="-1.6" dx="2" dy="0.5" layer="1"/>
<text x="5.08" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-4.445" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.3034" y1="1.4367" x2="2.6072" y2="1.7731" layer="51"/>
<rectangle x1="1.3034" y1="0.6376" x2="2.6072" y2="0.974" layer="51"/>
<rectangle x1="1.3034" y1="-0.1615" x2="2.6072" y2="0.1749" layer="51"/>
<rectangle x1="1.3034" y1="-0.9606" x2="2.6072" y2="-0.6242" layer="51"/>
<rectangle x1="1.3034" y1="-1.7596" x2="2.6072" y2="-1.4232" layer="51"/>
<rectangle x1="-6.4" y1="-3.85" x2="-4.425" y2="3.85" layer="41"/>
<rectangle x1="-2.175" y1="-3.85" x2="-0.45" y2="3.85" layer="41"/>
<rectangle x1="-4.425" y1="-2.925" x2="-2.175" y2="2.925" layer="41"/>
<rectangle x1="0.45" y1="-1.85" x2="1.225" y2="1.85" layer="41"/>
<rectangle x1="-0.45" y1="-1.3" x2="0.45" y2="1.3" layer="41"/>
<hole x="0" y="-1.75" drill="0.9"/>
<hole x="0" y="1.75" drill="0.9"/>
</package>
<package name="UX60-MB-5S8" urn="urn:adsk.eagle:footprint:7172/1" library_version="2">
<description>&lt;b&gt;MINI USB Connector HI-SPEED Certified&lt;/b&gt; Metal Shield Dip Type With Positioning Post&lt;p&gt;
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<wire x1="0.0491" y1="3.8059" x2="8.9511" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="8.9511" y1="3.8059" x2="8.9511" y2="2.5442" width="0.1016" layer="21"/>
<wire x1="8.9511" y1="2.5442" x2="8.5866" y2="2.1797" width="0.1016" layer="21" curve="-90.031447"/>
<wire x1="8.5866" y1="2.1797" x2="8.0539" y2="2.1797" width="0.1016" layer="21"/>
<wire x1="8.0539" y1="2.1797" x2="7.6894" y2="1.8152" width="0.1016" layer="51" curve="90"/>
<wire x1="7.6894" y1="1.8152" x2="7.6894" y2="-1.8578" width="0.1016" layer="51"/>
<wire x1="7.6894" y1="-1.8578" x2="8.0118" y2="-2.1802" width="0.1016" layer="51" curve="90"/>
<wire x1="8.0118" y1="-2.1802" x2="8.6006" y2="-2.1802" width="0.1016" layer="21"/>
<wire x1="8.6006" y1="-2.1802" x2="8.9511" y2="-2.5307" width="0.1016" layer="21" curve="-90.032703"/>
<wire x1="8.9511" y1="-2.5307" x2="8.9511" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="8.9511" y1="-3.8064" x2="0.0491" y2="-3.8064" width="0.1016" layer="21"/>
<wire x1="0.0491" y1="-3.8064" x2="0.0491" y2="3.8059" width="0.1016" layer="21"/>
<wire x1="1.2407" y1="3.7498" x2="1.2407" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="1.2407" y1="2.2077" x2="1.5912" y2="1.8572" width="0.1016" layer="21" curve="90.032703"/>
<wire x1="1.5912" y1="1.8572" x2="1.6332" y2="1.8572" width="0.1016" layer="21"/>
<wire x1="1.6332" y1="1.8572" x2="5.3062" y2="1.689" width="0.1016" layer="21"/>
<wire x1="5.3062" y1="1.689" x2="5.3202" y2="1.9834" width="0.1016" layer="21" curve="179.766458"/>
<wire x1="5.3202" y1="1.9834" x2="1.9276" y2="2.2077" width="0.1016" layer="21"/>
<wire x1="1.9276" y1="2.2077" x2="1.9416" y2="2.6984" width="0.1016" layer="21" curve="-175.705121"/>
<wire x1="1.9416" y1="2.6984" x2="5.3482" y2="2.9227" width="0.1016" layer="21"/>
<wire x1="5.3482" y1="2.9227" x2="5.4604" y2="3.0488" width="0.1016" layer="21" curve="89.143172"/>
<wire x1="5.4604" y1="3.0488" x2="5.4604" y2="3.7498" width="0.1016" layer="21"/>
<wire x1="5.7548" y1="0.7497" x2="5.4183" y2="1.0862" width="0.1016" layer="21" curve="89.965956"/>
<wire x1="5.4183" y1="1.0862" x2="1.3949" y2="1.2965" width="0.1016" layer="21"/>
<wire x1="1.3949" y1="1.2965" x2="1.3809" y2="1.0301" width="0.1016" layer="21" curve="180"/>
<wire x1="1.3809" y1="1.0301" x2="4.4931" y2="0.8619" width="0.1016" layer="21"/>
<wire x1="4.4931" y1="0.8619" x2="4.9277" y2="0.4273" width="0.1016" layer="21" curve="-90"/>
<wire x1="4.9277" y1="0.4273" x2="4.9277" y2="-0.4559" width="0.1016" layer="21"/>
<wire x1="4.9277" y1="-0.4559" x2="4.5071" y2="-0.8765" width="0.1016" layer="21" curve="-90"/>
<wire x1="4.5071" y1="-0.8765" x2="4.437" y2="-0.8765" width="0.1016" layer="21"/>
<wire x1="4.437" y1="-0.8765" x2="1.3949" y2="-1.0167" width="0.1016" layer="21"/>
<wire x1="1.3949" y1="-1.0167" x2="1.3949" y2="-1.297" width="0.1016" layer="21" curve="174.689178"/>
<wire x1="1.3949" y1="-1.297" x2="5.3903" y2="-1.0868" width="0.1016" layer="21"/>
<wire x1="5.3903" y1="-1.0868" x2="5.7548" y2="-0.7223" width="0.1016" layer="21" curve="89.968571"/>
<wire x1="5.7548" y1="-0.7223" x2="5.7548" y2="0.7497" width="0.1016" layer="21"/>
<wire x1="1.2408" y1="-3.7504" x2="1.2408" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="1.2408" y1="-2.2083" x2="1.5913" y2="-1.8578" width="0.1016" layer="21" curve="-89.967316"/>
<wire x1="1.5913" y1="-1.8578" x2="1.6333" y2="-1.8578" width="0.1016" layer="21"/>
<wire x1="1.6333" y1="-1.8578" x2="5.3063" y2="-1.6896" width="0.1016" layer="21"/>
<wire x1="5.3063" y1="-1.6896" x2="5.3203" y2="-1.984" width="0.1016" layer="21" curve="-179.766458"/>
<wire x1="5.3203" y1="-1.984" x2="1.9277" y2="-2.2083" width="0.1016" layer="21"/>
<wire x1="1.9277" y1="-2.2083" x2="1.9417" y2="-2.699" width="0.1016" layer="21" curve="175.705121"/>
<wire x1="1.9417" y1="-2.699" x2="5.3483" y2="-2.9233" width="0.1016" layer="21"/>
<wire x1="5.3483" y1="-2.9233" x2="5.4605" y2="-3.0494" width="0.1016" layer="21" curve="-89.143172"/>
<wire x1="5.4605" y1="-3.0494" x2="5.4605" y2="-3.7504" width="0.1016" layer="21"/>
<wire x1="8.9" y1="-3.25" x2="9.3" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="9.3" y1="-3.65" x2="8.9" y2="-4.05" width="0" layer="46" curve="-90"/>
<wire x1="8.9" y1="-4.05" x2="7.9" y2="-4.05" width="0" layer="46"/>
<wire x1="7.9" y1="-4.05" x2="7.5" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="7.5" y1="-3.65" x2="7.9" y2="-3.25" width="0" layer="46" curve="-90"/>
<wire x1="7.9" y1="-3.25" x2="8.9" y2="-3.25" width="0" layer="46"/>
<wire x1="8.9" y1="4.05" x2="9.3" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="9.3" y1="3.65" x2="8.9" y2="3.25" width="0" layer="46" curve="-90"/>
<wire x1="8.9" y1="3.25" x2="7.9" y2="3.25" width="0" layer="46"/>
<wire x1="7.9" y1="3.25" x2="7.5" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="7.5" y1="3.65" x2="7.9" y2="4.05" width="0" layer="46" curve="-90"/>
<wire x1="7.9" y1="4.05" x2="8.9" y2="4.05" width="0" layer="46"/>
<wire x1="3.6" y1="-3.25" x2="4" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="4" y1="-3.65" x2="3.6" y2="-4.05" width="0" layer="46" curve="-90"/>
<wire x1="3.6" y1="-4.05" x2="2.6" y2="-4.05" width="0" layer="46"/>
<wire x1="2.6" y1="-4.05" x2="2.2" y2="-3.65" width="0" layer="46" curve="-90"/>
<wire x1="2.2" y1="-3.65" x2="2.6" y2="-3.25" width="0" layer="46" curve="-90"/>
<wire x1="2.6" y1="-3.25" x2="3.6" y2="-3.25" width="0" layer="46"/>
<wire x1="3.6" y1="4.05" x2="4" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="4" y1="3.65" x2="3.6" y2="3.25" width="0" layer="46" curve="-90"/>
<wire x1="3.6" y1="3.25" x2="2.6" y2="3.25" width="0" layer="46"/>
<wire x1="2.6" y1="3.25" x2="2.2" y2="3.65" width="0" layer="46" curve="-90"/>
<wire x1="2.2" y1="3.65" x2="2.6" y2="4.05" width="0" layer="46" curve="-90"/>
<wire x1="2.6" y1="4.05" x2="3.6" y2="4.05" width="0" layer="46"/>
<pad name="M4" x="8.4" y="-3.65" drill="0.8" shape="long"/>
<pad name="M3" x="8.4" y="3.65" drill="0.8" shape="long"/>
<pad name="M1" x="3.1" y="-3.65" drill="0.8" shape="long"/>
<pad name="M2" x="3.1" y="3.65" drill="0.8" shape="long"/>
<smd name="1" x="8.65" y="1.6" dx="2" dy="0.5" layer="1"/>
<smd name="2" x="8.65" y="0.8" dx="2" dy="0.5" layer="1"/>
<smd name="3" x="8.65" y="0" dx="2" dy="0.5" layer="1"/>
<smd name="4" x="8.65" y="-0.8" dx="2" dy="0.5" layer="1"/>
<smd name="5" x="8.65" y="-1.6" dx="2" dy="0.5" layer="1"/>
<text x="11.43" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="1.27" y="-5.715" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="7.7034" y1="1.4367" x2="9.0072" y2="1.7731" layer="51"/>
<rectangle x1="7.7034" y1="0.6376" x2="9.0072" y2="0.974" layer="51"/>
<rectangle x1="7.7034" y1="-0.1615" x2="9.0072" y2="0.1749" layer="51"/>
<rectangle x1="7.7034" y1="-0.9606" x2="9.0072" y2="-0.6242" layer="51"/>
<rectangle x1="7.7034" y1="-1.7596" x2="9.0072" y2="-1.4232" layer="51"/>
<rectangle x1="0" y1="-3.85" x2="1.975" y2="3.85" layer="41"/>
<rectangle x1="4.225" y1="-3.85" x2="5.95" y2="3.85" layer="41"/>
<rectangle x1="1.975" y1="-2.925" x2="4.225" y2="2.925" layer="41"/>
<rectangle x1="5.95" y1="-1.85" x2="7.625" y2="1.85" layer="41"/>
<rectangle x1="0" y1="-3.85" x2="1.775" y2="3.85" layer="39"/>
<rectangle x1="1.775" y1="-2.975" x2="4.425" y2="2.975" layer="39"/>
<rectangle x1="4.425" y1="-3.85" x2="5.95" y2="3.85" layer="39"/>
<rectangle x1="6.85" y1="-1.85" x2="7.625" y2="1.85" layer="39"/>
<rectangle x1="5.95" y1="-1.3" x2="6.85" y2="1.3" layer="39"/>
<hole x="6.4" y="-1.75" drill="0.9"/>
<hole x="6.4" y="1.75" drill="0.9"/>
</package>
</packages>
<packages3d>
<package3d name="UX60A-MB-5ST" urn="urn:adsk.eagle:package:7263/1" type="box" library_version="2">
<description>MINI USB Connector HI-SPEED Certified Metal Shield SMT Type Without Positioning Post
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<packageinstances>
<packageinstance name="UX60A-MB-5ST"/>
</packageinstances>
</package3d>
<package3d name="UX60-MB-5ST" urn="urn:adsk.eagle:package:7266/1" type="box" library_version="2">
<description>MINI USB Connector HI-SPEED Certified Metal Shield SMT Type With Positioning Post
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<packageinstances>
<packageinstance name="UX60-MB-5ST"/>
</packageinstances>
</package3d>
<package3d name="UX60-MB-5S8" urn="urn:adsk.eagle:package:7264/1" type="box" library_version="2">
<description>MINI USB Connector HI-SPEED Certified Metal Shield Dip Type With Positioning Post
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<packageinstances>
<packageinstance name="UX60-MB-5S8"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MINI-USB" urn="urn:adsk.eagle:symbol:7170/1" library_version="2">
<wire x1="-2.54" y1="6.35" x2="-2.54" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.35" x2="-1.27" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="1.016" y2="-8.128" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="1.016" y1="-8.128" x2="2.54" y2="-8.89" width="0.254" layer="94" curve="53.130102"/>
<wire x1="2.54" y1="-8.89" x2="5.08" y2="-8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="-8.89" x2="6.35" y2="-7.62" width="0.254" layer="94" curve="90"/>
<wire x1="6.35" y1="-7.62" x2="6.35" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.35" x2="-1.27" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="1.016" y2="8.128" width="0.254" layer="94" curve="53.130102"/>
<wire x1="1.016" y1="8.128" x2="2.54" y2="8.89" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="2.54" y1="8.89" x2="5.08" y2="8.89" width="0.254" layer="94"/>
<wire x1="5.08" y1="8.89" x2="6.35" y2="7.62" width="0.254" layer="94" curve="-90"/>
<wire x1="0" y1="5.08" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="1.27" y2="-6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="-6.35" x2="3.81" y2="-6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="6.35" width="0.254" layer="94"/>
<wire x1="3.81" y1="6.35" x2="1.27" y2="6.35" width="0.254" layer="94"/>
<wire x1="1.27" y1="6.35" x2="0" y2="5.08" width="0.254" layer="94"/>
<text x="-2.54" y="11.43" size="1.778" layer="95">&gt;NAME</text>
<text x="10.16" y="-7.62" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="1" x="-5.08" y="5.08" visible="pin" direction="in"/>
<pin name="2" x="-5.08" y="2.54" visible="pin" direction="in"/>
<pin name="3" x="-5.08" y="0" visible="pin" direction="in"/>
<pin name="4" x="-5.08" y="-2.54" visible="pin" direction="in"/>
<pin name="5" x="-5.08" y="-5.08" visible="pin" direction="in"/>
</symbol>
<symbol name="USB-SHIELD" urn="urn:adsk.eagle:symbol:7174/1" library_version="2">
<wire x1="-7.62" y1="0" x2="1.27" y2="0" width="0.254" layer="94" style="shortdash"/>
<wire x1="1.27" y1="0" x2="2.54" y2="1.27" width="0.254" layer="94" style="shortdash" curve="90"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="19.05" width="0.254" layer="94" style="shortdash"/>
<wire x1="-7.62" y1="20.32" x2="1.27" y2="20.32" width="0.254" layer="94" style="shortdash"/>
<wire x1="1.27" y1="20.32" x2="2.54" y2="19.05" width="0.254" layer="94" style="shortdash" curve="-90"/>
<text x="3.81" y="-2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="S1" x="-7.62" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S2" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S3" x="-2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="S4" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MINI-USB-SHIELD-" urn="urn:adsk.eagle:component:7338/2" prefix="X" library_version="2">
<description>&lt;b&gt;MINI USB Connector&lt;/b&gt;&lt;p&gt;
Source: http://www.hirose.co.jp/cataloge_hp/e24000019.pdf</description>
<gates>
<gate name="G$1" symbol="MINI-USB" x="0" y="0"/>
<gate name="S" symbol="USB-SHIELD" x="5.08" y="-10.16" addlevel="request"/>
</gates>
<devices>
<device name="UX60A-MB-5ST" package="UX60A-MB-5ST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7263/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="UX60-MB-5ST" package="UX60-MB-5ST">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7266/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="UX60-MB-5S8" package="UX60-MB-5S8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="S" pin="S1" pad="M1"/>
<connect gate="S" pin="S2" pad="M2"/>
<connect gate="S" pin="S3" pad="M3"/>
<connect gate="S" pin="S4" pad="M4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:7264/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="nrf24l01">
<packages>
<package name="NRF24L01">
<wire x1="-1.27" y1="3.81" x2="1.27" y2="3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.81" x2="1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="1.27" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-2.54" x2="-1.27" y2="3.81" width="0.127" layer="21"/>
<pad name="CSN" x="1.27" y="1.27" drill="0.6" shape="square"/>
<pad name="CE" x="-1.27" y="1.27" drill="0.6" shape="square"/>
<pad name="MISO" x="-1.27" y="-1.27" drill="0.6" shape="square"/>
<pad name="SCK" x="-1.27" y="0" drill="0.6" shape="square"/>
<pad name="MOSI" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="IRQ" x="1.27" y="-1.27" drill="0.6" shape="square"/>
<pad name="GND" x="-1.27" y="2.54" drill="0.6" shape="square"/>
<pad name="VCC" x="1.27" y="2.54" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="NRF24L01">
<pin name="SCK" x="-15.24" y="0" visible="pin" length="middle"/>
<pin name="CE" x="-15.24" y="5.08" visible="pin" length="middle"/>
<pin name="GND" x="-15.24" y="10.16" visible="pin" length="middle"/>
<pin name="MISO" x="-15.24" y="-5.08" visible="pin" length="middle"/>
<pin name="MOSI" x="15.24" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="CSN" x="15.24" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="15.24" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="IRQ" x="15.24" y="-5.08" visible="pin" length="middle" rot="R180"/>
<wire x1="-10.16" y1="-7.62" x2="-10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="12.7" x2="10.16" y2="12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="12.7" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<text x="-7.62" y="15.24" size="1.778" layer="95">nRF24L01</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="NRF24L01" uservalue="yes">
<description>Modul radio nRF24L01</description>
<gates>
<gate name="G$1" symbol="NRF24L01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NRF24L01">
<connects>
<connect gate="G$1" pin="CE" pad="CE"/>
<connect gate="G$1" pin="CSN" pad="CSN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="IRQ" pad="IRQ"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND" library="Arduino-clone" deviceset="NANO" device=""/>
<part name="U$2" library="MQ-135(test)" deviceset="DEV" device=""/>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="X1" library="con-hirose" library_urn="urn:adsk.eagle:library:152" deviceset="MINI-USB-SHIELD-" device="UX60-MB-5S8" package3d_urn="urn:adsk.eagle:package:7264/1"/>
<part name="U$3" library="nrf24l01" deviceset="NRF24L01" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="218.44" y="15.24" size="2.54" layer="94">Version 3.0</text>
<text x="218.44" y="20.32" size="2.54" layer="94">AeroGuard</text>
<text x="218.44" y="10.16" size="2.54" layer="94">Date:14.09.2023</text>
<text x="165.1" y="15.24" size="1.778" layer="97">Note:The supply voltage will come from a
 230VAC-5VDC converter</text>
</plain>
<instances>
<instance part="GND" gate="G$1" x="139.7" y="99.06" smashed="yes"/>
<instance part="U$2" gate="G$1" x="88.9" y="121.92" smashed="yes" rot="MR90"/>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="SHEET" x="230.505" y="5.08" size="2.54" layer="94"/>
</instance>
<instance part="X1" gate="G$1" x="88.9" y="58.42" smashed="yes" rot="R270"/>
<instance part="U$3" gate="G$1" x="193.04" y="93.98" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="A0"/>
<wire x1="116.84" y1="106.68" x2="91.44" y2="106.68" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="A0"/>
<wire x1="91.44" y1="106.68" x2="91.44" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="GND"/>
<wire x1="116.84" y1="81.28" x2="86.36" y2="81.28" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="86.36" y1="81.28" x2="86.36" y2="111.76" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="5"/>
<wire x1="83.82" y1="63.5" x2="83.82" y2="81.28" width="0.1524" layer="91"/>
<wire x1="83.82" y1="81.28" x2="86.36" y2="81.28" width="0.1524" layer="91"/>
<junction x="86.36" y="81.28"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="5"/>
<wire x1="116.84" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="83.82" y1="86.36" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<wire x1="93.98" y1="63.5" x2="93.98" y2="78.74" width="0.1524" layer="91"/>
<pinref part="GND" gate="G$1" pin="RAW"/>
<wire x1="93.98" y1="78.74" x2="116.84" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<label x="175.26" y="104.14" size="1.27" layer="95" rot="R180" xref="yes"/>
<wire x1="177.8" y1="104.14" x2="175.26" y2="104.14" width="0.1524" layer="91"/>
<label x="175.26" y="104.14" size="1.27" layer="95" rot="R180" xref="yes"/>
<label x="116.84" y="81.28" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="7" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="CE"/>
<wire x1="177.8" y1="99.06" x2="175.26" y2="99.06" width="0.1524" layer="91"/>
<label x="175.26" y="99.06" size="1.27" layer="95" rot="R180" xref="yes"/>
<label x="152.4" y="101.6" size="1.27" layer="95" rot="MR180" xref="yes"/>
</segment>
</net>
<net name="13" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SCK"/>
<wire x1="177.8" y1="93.98" x2="175.26" y2="93.98" width="0.1524" layer="91"/>
<label x="175.26" y="93.98" size="1.27" layer="95" rot="MR0" xref="yes"/>
<label x="114.3" y="114.3" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="12" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="MISO"/>
<wire x1="177.8" y1="88.9" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
<label x="175.26" y="88.9" size="1.27" layer="95" rot="MR0" xref="yes"/>
<label x="152.4" y="114.3" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<wire x1="208.28" y1="104.14" x2="210.82" y2="104.14" width="0.1524" layer="91"/>
<label x="210.82" y="104.14" size="1.27" layer="95" xref="yes"/>
<label x="114.3" y="111.76" size="1.27" layer="95" rot="MR0" xref="yes"/>
</segment>
</net>
<net name="8" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="CSN"/>
<wire x1="208.28" y1="99.06" x2="210.82" y2="99.06" width="0.1524" layer="91"/>
<label x="210.82" y="99.06" size="1.27" layer="95" xref="yes"/>
<label x="152.4" y="104.14" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="11" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="MOSI"/>
<wire x1="208.28" y1="93.98" x2="210.82" y2="93.98" width="0.1524" layer="91"/>
<label x="210.82" y="93.98" size="1.27" layer="95" xref="yes"/>
<label x="152.4" y="111.76" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="3.3V"/>
<wire x1="116.84" y1="111.76" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D12"/>
<wire x1="149.86" y1="114.3" x2="152.4" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D13"/>
<wire x1="116.84" y1="114.3" x2="114.3" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D8"/>
<wire x1="149.86" y1="104.14" x2="152.4" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D7"/>
<wire x1="149.86" y1="101.6" x2="152.4" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D11"/>
<wire x1="149.86" y1="111.76" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="GND" gate="G$1" pin="D10"/>
<wire x1="149.86" y1="109.22" x2="152.4" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
