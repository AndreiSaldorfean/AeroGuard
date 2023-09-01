<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<pin name="5.5V" x="-22.86" y="-12.7" visible="pin" length="middle"/>
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
<connect gate="G$1" pin="5.5V" pad="5V"/>
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
<library name="RA-02_LORA">
<packages>
<package name="MODULE_RA-02_LORA">
<wire x1="-8" y1="8.5" x2="8" y2="8.5" width="0.127" layer="51"/>
<wire x1="8" y1="8.5" x2="8" y2="-8.5" width="0.127" layer="51"/>
<wire x1="8" y1="-8.5" x2="-8" y2="-8.5" width="0.127" layer="51"/>
<wire x1="-8" y1="-8.5" x2="-8" y2="8.5" width="0.127" layer="51"/>
<wire x1="-8" y1="8.5" x2="8" y2="8.5" width="0.127" layer="21"/>
<wire x1="-8" y1="-8.5" x2="8" y2="-8.5" width="0.127" layer="21"/>
<wire x1="-9.25" y1="8.75" x2="9.25" y2="8.75" width="0.05" layer="39"/>
<wire x1="9.25" y1="8.75" x2="9.25" y2="-8.75" width="0.05" layer="39"/>
<wire x1="9.25" y1="-8.75" x2="-9.25" y2="-8.75" width="0.05" layer="39"/>
<wire x1="-9.25" y1="-8.75" x2="-9.25" y2="8.75" width="0.05" layer="39"/>
<text x="-8" y="9" size="1.27" layer="25">&gt;NAME</text>
<text x="-8" y="-9" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<circle x="-9.576" y="7" radius="0.1" width="0.2" layer="21"/>
<circle x="-9.576" y="7" radius="0.1" width="0.2" layer="51"/>
<smd name="1" x="-7.6" y="7" dx="2.8" dy="1.1" layer="1"/>
<smd name="2" x="-7.7" y="5" dx="2.6" dy="1.1" layer="1"/>
<smd name="3" x="-7.7" y="3" dx="2.6" dy="1.1" layer="1"/>
<smd name="4" x="-7.7" y="1" dx="2.6" dy="1.1" layer="1"/>
<smd name="5" x="-7.7" y="-1" dx="2.6" dy="1.1" layer="1"/>
<smd name="6" x="-7.7" y="-3" dx="2.6" dy="1.1" layer="1"/>
<smd name="7" x="-7.7" y="-5" dx="2.6" dy="1.1" layer="1"/>
<smd name="8" x="-7.7" y="-7" dx="2.6" dy="1.1" layer="1"/>
<smd name="9" x="7.7" y="-7" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="10" x="7.7" y="-5" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="11" x="7.7" y="-3" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="12" x="7.7" y="-1" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="13" x="7.7" y="1" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="14" x="7.7" y="3" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="15" x="7.7" y="5" dx="2.6" dy="1.1" layer="1" rot="R180"/>
<smd name="16" x="7.7" y="7" dx="2.6" dy="1.1" layer="1" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="RA-02_LORA">
<wire x1="-10.16" y1="-12.7" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="-10.16" y2="-12.7" width="0.254" layer="94"/>
<text x="-10.16" y="16.51" size="2.54" layer="95">&gt;NAME</text>
<text x="-10.16" y="-13.97" size="2.54" layer="96" align="top-left">&gt;VALUE</text>
<pin name="GND" x="15.24" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="3.3V" x="15.24" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="RESET" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="DI00" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="DI01" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="DI02" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="DI03" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="DI04" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="DI05" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="SCK" x="-15.24" y="0" length="middle" direction="in" function="clk"/>
<pin name="MISO" x="-15.24" y="-5.08" length="middle" direction="out"/>
<pin name="MOSI" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="NSS" x="-15.24" y="2.54" length="middle" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RA-02_LORA" prefix="U">
<description>Ra-02 LoRa RF M5Stack Platform Evaluation Expansion Board  &lt;a href="https://pricing.snapeda.com/parts/Ra-02%20LoRa/AI-Thinker/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RA-02_LORA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_RA-02_LORA">
<connects>
<connect gate="G$1" pin="3.3V" pad="3"/>
<connect gate="G$1" pin="DI00" pad="5"/>
<connect gate="G$1" pin="DI01" pad="6"/>
<connect gate="G$1" pin="DI02" pad="7"/>
<connect gate="G$1" pin="DI03" pad="8"/>
<connect gate="G$1" pin="DI04" pad="10"/>
<connect gate="G$1" pin="DI05" pad="11"/>
<connect gate="G$1" pin="GND" pad="1 2 9 16"/>
<connect gate="G$1" pin="MISO" pad="13"/>
<connect gate="G$1" pin="MOSI" pad="14"/>
<connect gate="G$1" pin="NSS" pad="15"/>
<connect gate="G$1" pin="RESET" pad="4"/>
<connect gate="G$1" pin="SCK" pad="12"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Not in stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/Ra-02%20LoRa/AI-Thinker/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" Ra-02 LoRa RF M5Stack Platform Evaluation Expansion Board "/>
<attribute name="MF" value="AI-Thinker"/>
<attribute name="MP" value="Ra-02 LoRa"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/Ra-02%20LoRa/AI-Thinker/view-part/?ref=snap"/>
</technology>
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
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
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
<part name="U$1" library="Arduino-clone" deviceset="NANO" device=""/>
<part name="U1" library="RA-02_LORA" deviceset="RA-02_LORA" device=""/>
<part name="U$2" library="MQ-135(test)" deviceset="DEV" device=""/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="17.78" y="30.48" size="1.778" layer="91">Tensiunea de alimentare poate proveni de la un transformator(230 VAc - 5 VDC) și un redresor</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="93.98" y="66.04" smashed="yes"/>
<instance part="U1" gate="G$1" x="25.4" y="66.04" smashed="yes">
<attribute name="NAME" x="15.24" y="82.55" size="2.54" layer="95"/>
<attribute name="VALUE" x="15.24" y="52.07" size="2.54" layer="96" align="top-left"/>
</instance>
<instance part="U$2" gate="G$1" x="58.42" y="93.98" smashed="yes" rot="MR90">
<attribute name="VALUE" x="43.18" y="99.06" size="1.778" layer="96" rot="MR90"/>
</instance>
<instance part="SUPPLY1" gate="+5V" x="55.88" y="38.1" smashed="yes">
<attribute name="VALUE" x="53.975" y="41.275" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="3.3V"/>
<pinref part="U$1" gate="G$1" pin="3.3V"/>
<wire x1="40.64" y1="78.74" x2="71.12" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D12" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MOSI"/>
<wire x1="10.16" y1="63.5" x2="7.62" y2="63.5" width="0.1524" layer="91"/>
<label x="7.62" y="63.5" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D12"/>
<wire x1="104.14" y1="81.28" x2="109.22" y2="81.28" width="0.1524" layer="91"/>
<label x="109.22" y="81.28" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="MISO"/>
<wire x1="10.16" y1="60.96" x2="7.62" y2="60.96" width="0.1524" layer="91"/>
<label x="7.62" y="60.96" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D11"/>
<wire x1="104.14" y1="78.74" x2="109.22" y2="78.74" width="0.1524" layer="91"/>
<label x="109.22" y="78.74" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D10" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="NSS"/>
<wire x1="10.16" y1="68.58" x2="7.62" y2="68.58" width="0.1524" layer="91"/>
<label x="7.62" y="68.58" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D10"/>
<wire x1="104.14" y1="76.2" x2="109.22" y2="76.2" width="0.1524" layer="91"/>
<label x="109.22" y="76.2" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="D13" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SCK"/>
<wire x1="10.16" y1="66.04" x2="7.62" y2="66.04" width="0.1524" layer="91"/>
<label x="7.62" y="66.04" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="D13"/>
<wire x1="71.12" y1="81.28" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<label x="68.58" y="81.28" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="A0"/>
<wire x1="60.96" y1="83.82" x2="60.96" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="A0"/>
<wire x1="60.96" y1="73.66" x2="71.12" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="83.82" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="55.88" x2="40.64" y2="48.26" width="0.1524" layer="91"/>
<wire x1="40.64" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<junction x="55.88" y="48.26"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="53.34" y1="83.82" x2="53.34" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="5.5V"/>
<wire x1="53.34" y1="53.34" x2="71.12" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="SUPPLY1" gate="+5V" pin="+5V"/>
<wire x1="55.88" y1="35.56" x2="71.12" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="RAW"/>
<wire x1="71.12" y1="35.56" x2="71.12" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
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
</compatibility>
</eagle>
