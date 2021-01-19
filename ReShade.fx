//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// ReShade effect file
// visit facebook.com/MartyMcModding for news/updates
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// MasterEffect ReBorn 1.0.302 public beta by Marty McFly (Unofficial hotfixes by Matsilagi)
// Continuation of MasterEffect 1.6.1
// Copyright © 2008-2015 Marty McFly
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//	NOT COMPATIBLE TO ENBSERIES ANYMORE! THIS IS ONLY FOR RESHADE BY CROSIRE!

#define USE_SPLITSCREEN		0	//[0 or 1] Splitscreen: Disables all effects on the right half of the screen to show changes.
#define USE_DEPTHBUFFER_OUTPUT	0	//[0 or 1] Depth Buffer Output: Shows you the pixel depth, this is for debugging or depth map creation only.
#define USE_TILTSHIFT		0	//[0 or 1] Tilt Shift: Photographic effect which blurs the screen to simulate focus. Results in game world looking tiny when viewed from above.
#define USE_LUT			0	//[0 or 1] Color Lookup Table: Uses a gradient texture to adjust the colors of the image. 
#define USE_LENSDIRT		0	//[0 or 1] Lensdirt: Simulates a dirty camera lens. IMPORTANT: bloom threshold and amount have influence on the intensity of the dirt!
#define USE_GAUSSIAN_ANAMFLARE	0	//[0 or 1] Gaussian Anamflare: Applies a horizontal light beam to bright pixels.
#define USE_BLOOM 		0	//[0 or 1] Bloom: Makes bright lights bleed their light into their surroundings. NOT the SweetFX way to do bloom but a more proper way.
#define USE_SSAO		0	//[0 or 1] SSAO: Enables Screen-Space Ambient Occlusion, a non-physically correct but realistic shading algorithm
#define USE_PETKAGTADOF 	0	//[0 or 1] Matso DOF: Enables PetkaGtA's Depth of Field, originally of Blender. 
#define USE_MATSODOF 		0	//[0 or 1] Matso DOF: Enables Matso's Depth of Field. 
#define USE_GP65CJ042DOF	0	//[0 or 1] gp65cj042 DOF: Enables Depth of Field shader, this version is originally by user gp65cj042, ME uses an optimized version by me (Marty McFly). 
#define USE_EXPLOSION     	0 	//[0 or 1] Explosion : Scatters the pixels, making the image look fuzzy.
#define USE_CARTOON       	0 	//[0 or 1] Cartoon : "Toon"s the image. 
#define USE_SHARPENING		0	//[0 or 1] Sharpen: Sharps the image but may increase aliasing
#define USE_LEVELS        	0 	//[0 or 1] Levels : Sets a new black and white point. This increases contrast but causes clipping. Use Curves instead if you want to avoid that.
#define USE_TECHNICOLOR 	0	//[0 or 1] Technicolor : Attempts to mimic the look of an old movie using the Technicolor three-strip color process. Algorithm from prod80
#define USE_SWFX_TECHNICOLOR   	0 	//[0 or 1] Technicolor : Attempts to mimic the look of an old movie using the Technicolor three-strip color process. Algorithm from SweetFX
#define USE_DPX           	0 	//[0 or 1] Cineon DPX : Should make the image look like it's been converted to DXP Cineon - basically it's another movie-like look similar to technicolor.
#define USE_MONOCHROME    	0 	//[0 or 1] Monochrome : Monochrome makes the colors disappear. No control values.
#define USE_LIFTGAMMAGAIN 	0	//[0 or 1] Lift Gamma Gain : Adjust brightness and color of shadows, midtones and highlights.
#define USE_TONEMAP       	0 	//[0 or 1] Tonemap : Adjust gamma, exposure, saturation, bleach and defog. (may cause clipping).
#define USE_VIBRANCE      	0 	//[0 or 1] Vibrance : Intelligently saturates (or desaturates if you use negative values) the pixels depending on their original saturation.
#define USE_CURVES        	0 	//[0 or 1] Curves : Contrast adjustments using S-curves.
#define USE_SEPIA         	0 	//[0 or 1] Sepia : Sepia tones the image.
#define USE_SKYRIMTONEMAP	0	//[0 or 1] Skyrim Tonemap: Applies color correction/tonemapping based on tonemappers of popular Skyrim ENB's.
#define USE_COLORMOOD   	0       //[0 or 1] Color Mood: Applies a "mood" to the color, tinting mainly the dark colors.
#define USE_CROSSPROCESS 	0       //[0 or 1] Cross Processing: Simulates wrong chemistry in color processing.
#define USE_FILMICPASS 		0	//[0 or 1] Filmic Pass: Applies some common color adjustments to mimic a more cinema-like look.
#define USE_REINHARD  		0	//[0 or 1] Reinhard: This is the Reinhard tonemapping shader, if you are interested, google how it works.
#define USE_REINHARDLINEAR	0	//[0 or 1] Reinhard: Reinhard mixed with some linear tonemapping.
#define USE_COLORMOD		0	//[0 or 1] Colormod: Contrast, Saturation and Brightness ported from colormod.asi.
#define USE_SPHERICALTONEMAP	0	//[0 or 1] Spherical Tonemap: Another approach on tonemapping, uses some sphere algorithms.
#define USE_HPD  		0	//[0 or 1] Haarm Peter Duiker Filmic Tonemapping: Tonemapping used in Watch Dogs, ripped from the Watch Dogs shaders themselves.
#define USE_FILMICCURVE		0	//[0 or 1] Filmic Curve: Improved version of the well-known Uncharted 2 filmic curve, first seen in iCEnhancer 0.3.
#define USE_SINCITY		0	//[0 or 1] Sin City: Effect from the movie "Sin City" - everything else than red is grey.
#define USE_GODRAYS		0	//[0 or 1] Godrays: Adds some light rays rotating around screen center.
#define USE_ANAMFLARE		0	//[0 or 1] Anamorphic Lensflare: adds some horizontal light flare, simulating the use of an anamorphic lens while recording.
#define USE_CHROMATICABBERATION	0	//[0 or 1] Chromatic Abberation & Lens Distord: Adds some RGB shift in colors and distorts image to look like the "fisheye" effect.
#define USE_LENZFLARE 		0	//[0 or 1] Lenz Flare: Boris Vorontsov's Skyrim Lensflare with custom offsets, ported to MasterEffect.
#define USE_GRAIN		0	//[0 or 1] Grain: Adds some image grain, looks like when a TV has no signal.
#define USE_HD6_VIGNETTE	0	//[0 or 1] HeliosDoubleSix Vignette: Adds some advanced vignette (darkening shader) to lead focus to screen center
#define USE_BORISVIGNETTE	0	//[0 or 1] Boris Vorontsov Vignette: Simple colorable version of vignette, darkens/tints the image at the corners
#define USE_BORDER		0	//[0 or 1] Adds a 1 pixel black border around the screen to compensate white outlining caused by excessive sharpening
#define USE_MOVIEBARS 		0	//[0 or 1] Movie Bars: blackens the image on the top and bottom, simulating a higher aspect ratio. Default set to 21:9 aspect ratio.
#define USE_LEIFX 		0	//[0 or 1] LeifFX: Simulates use of old 3dfx render engines, read here for more info: http://leileilol.mancubus.net/shaders/
#define USE_COLORHUEFX		0	//[0 or 1] Color Hue FX: Desaturates everything but colors from a fixed hue mid and the range around it. Similiar to Sin City but much better. Thanks, prod80!

//TILT SHIFT
#define TiltShiftAxis 		0.0		//[0.0 to 90.0] Rotation of Tilt shift axis. 0.0 means horizontal focus line, 90.0 means vertical.
#define TiltShiftOffset 	0.5		//[0.0 to 1.0] Position of Tilt Shift axis. 0.5 is screen center. You may adjust this value when changing the axis value.
#define TiltShiftCurve 		1.0		//[0.0 to 2.0] Power of Tilt Shift blurring. 
#define TiltShiftMult 		5.0		//[1.0 to 7.0] Multiplicator if Tilt Shift blurring. Do not set too high, otherwise the single blur taps are visible.

//LENSDIRT
#define fLensdirtIntensity 	2.0		//[0.0 to 2.0] Intensity of lensdirt.

//GAUSSIAN ANAMORPHIC LENSFLARE
#define fAnamFlareThreshold	0.90		//[0.1 to 1.0] Every pixel brighter than this value gets a flare.
#define fAnamFlareWideness	2.4		//[1.0 to 2.5] Horizontal wideness of flare. Don't set too high, otherwise the single samples are visible
#define fAnamFlareAmount	14.5		//[1.0 to 20.0] Intensity of anamorphic flare.
#define fAnamFlareCurve		1.2		//[1.0 to 2.0] Intensity curve of flare with distance from source
#define fAnamFlareColor		float3(0.012,0.313,0.588) //[0.0 to 1.0] R, G and B components of anamorphic flare. Flare is always same color.

//BLOOM
#define BLOOM_MIXMODE		2		//[1 to 2] 1: Linear add | 2: Screen add | 3: Screen/Lighten/Opacity | 4: Lighten
#define fBloomThreshold		0.99		//[0.1 to 1.0] Every pixel brighter than this value triggers bloom.
#define fBloomAmount		0.8		//[1.0 to 20.0] Intensity of bloom.
#define fBloomSaturation 	1.2		//[0.0 to 2.0] Bloom saturation. 0.0 means white bloom, 2.0 means very very colorful bloom.
#define fBloomTint 		float3(0.7,0.8,1.0) //[0.0 to 1.0] R, G and B components of bloom tintcolor the bloom color gets shifted to.

//SCREEN SPACE AMBIENT OCCLUSION
#define SSAO_Debug		0		//[0 or 1] Enables raw SSAO output for debugging purposes.
#define SSAO_Smoothening	0.4		//[0.05 to 0.5] Amount of post blur applied on raw, noisy SSAO.
#define SSAO_Samples   		64 		//[32 to 128] Amount of samples. Don't set too high or shader compilation time goes through the roof.
#define SSAO_Range		30.0		//[10.0 to 50.0] SSAO sampling range. High range values might need more samples so raise both.
#define SSAO_SampleRangeClipMin	0.01		//[0.005 to 0.05] SSAO sampling min range clip. This should eliminate artifacts from objects that have very low depth difference.
#define SSAO_SampleRangeClipMax 0.1		//[0.1 to 0.5] SSAO sampling max range clip. This should prevent objects from occluding others which are far away from each other.
#define SSAO_DarkeningAmount 	2.5		//[0.0 to 5.0] Amount of SSAO corner darkening
#define SSAO_BrighteningAmount 	2.0		//[0.0 to 5.0] Amount of SSAO edge brightening

//PETKAGTA DEPTH OF FIELD
#define DOF_VIGNETTING		0		//[0 or 1] Enables vignetting (darkens edges). There is a better shader for that in ME but I decided to keep it
#define DOF_MANUAL 		1		//[0 or 1] Enables Manual DOF focussing
#define DOF_AUTO 		0		//[0 or 1] Enables Autofocus
#define DOF_PENTAGONSHAPE 	0		//[0 or 1] Enables Pentagonal DOF shape (bugged, dunno how to fix, better use GP DOF for polygonal shapes)
#define focalDepth   		2000.5 		//[10.0 to X] Depth of focal plane for manual DOF
#define focalLength   		200.0 		//[10.0 to X] Length of focus area for manual DOF
#define fstop   		150.5 		//[10.0 to X] fStop for manual DOF
#define vignint   		4  		//[0 to X] Amount if vignetting applied
#define fdofstart   		20  		//[0.0001 to 0.05] Distance where far blur starts
#define fdofdist   		1500  		//[0.1 to 1.0] Distance where far blur ends
#define focus   		float2(0.5,0.5) //[0.0 to 1.0] Screen coordinates of focus point. First value is horizontal, second value is vertical position. 0 is left/upper, 1 is right/lower.
#define CoC   			0.4 		//[0.01 to 0.3] table is here http://en.wikipedia.org/wiki/Circle_of_confusion
#define namount   		0.00004 	//[0.00000 to 0.0005] Amount of noise applied. This is no grain, rather some kind of DOF offset jittering
#define DOFdownsample   	4.0 		//[0 to 10] This should downsample the blurred areas but Boris and his unsupported stuff...
#define maxblur   		2.5 		//[1.0 to 10.0] Maximum amount of blurring
#define samples   		6  		//[5 to 30] Samples on the first ring. The other rings around have more samples
#define rings   		4  		//[1 to 8] Ring count
#define threshold   		2.5 		//[0.8 to 2.0] Threshold for bokeh brightening. Above this value, everything gets much much brighter. 1.0 is maximum value for LDR games like GTASA, higher values work only on HDR games like Skyrim etc.
#define gain   			0.1 		//[0.1 to 2.0] Amount of brightening for pixels brighter than threshold.
#define bias   			0.2 		//[0.1 to 2.0] bokeh bias.
#define fringe   		0.5 		//[0.0 to 1.0] Amount of chromatic abberation
#define znear   		100.0  		//[20 to 200] camera clipping start.
#define zfar   			3500.0  	//[1500 to 8000] camera clipping end.
#define feather   		1.1  		//[0.1 to 2.0] pentagon shape feather.

//MATSO DEPTH OF FIELD
#define USE_CHROMA_DOF		1		//[0 or 1] Enables Chromatic Abberation.		
#define USE_SMOOTH_DOF		1		//[0 or 1] Enables smoother DOF	
#define USE_BOKEH_DOF		1		//[0 or 1] Enables Bokeh DOF. Disabling it screws the shape up, leave it on
#define USE_AUTOFOCUS		1		//[0 or 1] Enables Autofocus	
#define CHROMA_POW		65.0		//[10 to 100] Controls amount of chromatic abberation		
#define DOF_SCALE		2356.1944901923449288469825374596 //LEAVE IT	
#define FIRST_PASS		2		//LEAVE IT		
#define SECOND_PASS		3		//LEAVE IT	
#define THIRD_PASS		0		//LEAVE IT	
#define FOURTH_PASS		1		//LEAVE IT	
#define DOF(sd,sf)		fApertureScale * smoothstep(fApertureBias, fApertureCutoff, abs(sd - sf)) //LEAVE IT
#define fvChroma		float3(0.995, 1.000, 1.005) //Displacement of colors for chromatic abberation. 1.0 is original position
#define fBaseRadius		0.9		
#define fFalloffRadius		1.8
#define fChromaPower		1.0
#define fvTexelSize		float2(1.0 / 1920.0, 1.0 / 1080.0)
#define fFocusBias		0.045
#define fApertureScale		0.004
#define fApertureCutoff		0.25
#define fApertureBias		0.07
#define fBokehCurve		8.0
#define fBokehLight		0.012

//GP65CJ042 DEPTH OF FIELD
#define	NOT_BLURRING_SKY_MODE 	0		//[0 or 1] Prevents the DOF of blurring the sky. Probably doesn't work on 0.076 due to SA's stupid depth calculation	
#define	DEPTH_OF_FIELD_QULITY 	7		//[0 to 7] 0: only slight gaussian farblur but no bokeh. 1-7 bokeh blur, higher means better quality of blur but less fps. 
#define	AUTO_FOCUS 		0		//[0 or 1] Enables automatic focal plane detection, for focussing FocusPoint is used.
#define TILT_SHIFT 		0		//[0 or 1] Enables Tilt shifting. Google it!
#define POLYGONAL_BOKEH 	1		//[0 or 1] Enables polygonal bokeh shape, e.g. POLYGON_NUM 5 means pentagonal bokeh shape. Setting this value to 0 results in circular bokeh shape.
#define	POLYGON_NUM 		8		//[3 to 9] Controls the amount pf polygons for polygonal bokeh shape. 3 = triangular, 4 = square, 5 = pentagonal etc.	
#define	FocusPoint 		float2(0.5, 0.5); //[0.0 to 1.0] Screen coordinates of focus point. First value is horizontal, second value is vertical position. 0 is left/upper, 1 is right/lower.
#define	FocusSampleRange	1.00		//[0.0 to 10.0] Autofocus samples 4 additional points around FocusPoint and averages focal plane. This value controls search radius of these 4 points.	
#define	NearBlurCurve 		100.00		//[0.0 to X] Blur curve of objects closer to camera than focal plane. Raise for less blur. Set to insane values for no blur.
#define	FarBlurCurve 		1.00		//[0.0 to X] Blur curve of objects beyond focal plane. Raise for less blur. Set to insane values for no blur.
#define	DepthClip 		150.0		//[10.0 to 1000.0] After this distance depth if max, no matter how far something really is.
#define ManualFocusDepth 	10.0		//[0.0 to 1000.0] Manual focus distance rougly in meters. Active only when AUTO_FOCUS 0.
#define	TiltShiftAngle 		30.0		//[0.0 to 360.0] Angle of autofocus. I highly recommend to google that effect if you wanna know what it does.
#define	BokehBias 		10.00		//[0.0 to 20.0] Shifts bokeh weighting to bokeh shape edge. Set to 0 for even bright bokeh shapes, raise it for darker bokeh shapes in center and brighter on edge.
#define	BokehBiasCurve 		1.50		//[0.0 to 3.0] Power of Bokeh Bias. Raise for more defined bokeh outlining on bokeh shape edge.
#define	BokehBrightnessThreshold 	0.8	//[0.6 to 2.0] Threshold for bokeh brightening. Above this value, everything gets much much brighter. 1.0 is maximum value for LDR games like GTASA, higher values work only on HDR games like Skyrim etc.
#define	BokehBrightnessMultipiler 	1.00	//[0.0 to 2.0] Amount of brightening for pixels brighter than BokehBrightnessThreshold.
#define	RadiusSacleMultipiler 	2.00		//[0.5 to 10.0] Overall blur multiplier, higher results in more blur. Do not set too high, otherwise the single taps will be visible. If that happens, raise quality.
#define BokehPostBlur		0.50		//[0.5 to 3.0] Radius in pixels for post gaussian blur after bokeh blur to smoothen shape. 
#define	ChromaticAberrationAmount 	0.00	//[0.00 to 0.4] Amount of color shifting applied on blurred areas. 

//EXPLOSION
#define Explosion_Radius    	10.5    	//[0.2 to 100.0] Amount of effect you want.

//CARTOON
#define CartoonPower         	1.5     	//[0.1 to 10.0] Amount of effect you want.
#define CartoonEdgeSlope     	1.5     	//[0.1 to 8.0] Raise this to filter out fainter edges. You might need to increase the power to compensate. Whole numbers are faster.

//SHARPEN
#define SharpBias  	     	0.35		//[0.05 to 1.0] How big the sharpen offset is (used to compare neighbor pixels to get sharpen amount
#define SharpStrength 		1.0		//[0.05 to 1.0] Amount of sharpening you want.
#define SharpClamp 		0.5		//[0.2 to 2.0] Clamps the sharpening to a maximum amount to prevent aliasing

//LEVELS
#define Levels_black_point 	36    		//[0 to 255] The black point is the new black - literally. Everything darker than this will become completely black. Default is 16.0
#define Levels_white_point 	235   		//[0 to 255] The new white point. Everything brighter than this becomes completely white. Default is 235.0

//TECHNICOLOR
#define ColStrengthR 		0.2		//[0.05 to 1.0] Color Strength of Red channel. Higher means darker and more intense colors.	
#define ColStrengthG 		0.2		//[0.05 to 1.0] Color Strength of Green channel. Higher means darker and more intense colors.
#define ColStrengthB 		0.2		//[0.05 to 1.0] Color Strength of Blue channel. Higher means darker and more intense colors.
#define TechniBrightness 	1.0		//[0.5 to 1.5] Brightness Adjustment, higher means brighter image.
#define TechniStrength 		1.0		//[0.0 to 1.0] Strength of Technicolor effect. 0.0 means original image.
#define TechniSat 		0.7		//[0.0 to 1.5] Additional saturation control since technicolor tends to oversaturate the image.

//SWEETFX TECHNICOLOR
#define TechniAmount 		0.4     	//[0.00 to 1.00] Amount of color change you want
#define TechniPower  		4.0     	//[0.00 to 8.00] Power of color change
#define redNegativeAmount   	0.88 		//[0.00 to 1.00] controls for different technicolor power on the respective color channels
#define greenNegativeAmount 	0.88    	//[0.00 to 1.00]
#define blueNegativeAmount  	0.88    	//[0.00 to 1.00]

//DPX
#define DPXRed   		8.0  		//[1.0 to 15.0] Amount of DPX applies on Red color channel
#define DPXGreen 		8.0  		//[1.0 to 15.0] ""
#define DPXBlue  		8.0  		//[1.0 to 15.0] ""
#define DPXColorGamma    	2.5  		//[0.1 to 2.5] Adjusts the colorfulness of the effect in a manner similar to Vibrance. 1.0 is neutral.
#define DPXSaturation 		3.0  		//[0.0 to 8.0] Adjust saturation of the effect. 1.0 is neutral.
#define DPXRedC   		0.36  		//[0.60 to 0.20] 
#define DPXGreenC 		0.36  		//[0.60 to 0.20]
#define DPXBlueC  		0.34  		//[0.60 to 0.20]
#define DPXBlend 		0.2    		//[0.00 to 1.00] How strong the effect should be.

//LIFTGAMMAGAIN
#define RGB_Lift  		float3(1.000, 1.000, 1.000)  //[0.000 to 2.000] Adjust shadows for Red, Green and Blue.
#define RGB_Gamma 		float3(1.000, 2.000, 1.000)  //[0.000 to 2.000] Adjust midtones for Red, Green and Blue
#define RGB_Gain  		float3(1.000, 1.000, 1.000)  //[0.000 to 2.000] Adjust highlights for Red, Green and Blue

//TONEMAP
#define Gamma       		1.000  		//[0.000 to 2.000] Adjust midtones. 1.000 is neutral. This setting does exactly the same as the one in Lift Gamma Gain, only with less control.
#define Exposure    		0.000  		//[-1.000 to 1.000] Adjust exposure
#define Saturation  		0.000  		//[-1.000 to 1.000] Adjust saturation
#define Bleach      		0.000  		//[0.000 to 1.000] Brightens the shadows and fades the colors
#define Defog       		0.000  		//[0.000 to 1.000] How much of the color tint to remove
#define FogColor 		float3(0.00, 0.00, 2.55) //[0.00 to 2.55, 0.00 to 2.55, 0.00 to 2.55] What color to remove - default is blue

//VIBRANCE
#define Vibrance     		1.15  		//[-1.00 to 1.00] Intelligently saturates (or desaturates if you use negative values) the pixels depending on their original saturation.
#define Vibrance_RGB_balance 	float3(1.00, 1.00, 1.00) //[-10.00 to 10.00,-10.00 to 10.00,-10.00 to 10.00] A per channel multiplier to the Vibrance strength so you can give more boost to certain colors over others

//CURVES
#define Curves_mode        	2 		//[0|1|2] Choose what to apply contrast to. 0 = Luma, 1 = Chroma, 2 = both Luma and Chroma. Default is 0 (Luma)
#define Curves_contrast 	1.15 		//[-1.00 to 1.00] The amount of contrast you want

// -- Advanced curve settings --
#define Curves_formula     	2 		//[1|2|3|4|5|6|7|8|9|10] The contrast s-curve you want to use.
                             			//1 = Sine, 2 = Abs split, 3 = Smoothstep, 4 = Exp formula, 5 = Simplified Catmull-Rom (0,0,1,1), 6 = Perlins Smootherstep
                             			//7 = Abs add, 8 = Techicolor Cinestyle, 9 = Parabola, 10 = Half-circles.
                             			//Note that Technicolor Cinestyle is practically identical to Sine, but runs slower. In fact I think the difference might only be due to rounding errors.
                             			//I prefer 2 myself, but 3 is a nice alternative with a little more effect (but harsher on the highlight and shadows) and it's the fastest formula.
		
//SEPIA
#define ColorTone 		float3(1.40, 1.10, 0.90) //[0.00 to 2.55, 0.00 to 2.55, 0.00 to 2.55] What color to tint the image
#define GreyPower  		0.11                     //[0.00 to 1.00] How much desaturate the image before tinting it
#define SepiaPower 		0.58                     //[0.00 to 1.00] How much to tint the image

//SKYRIM TONEMAPPING
#define POSTPROCESS			6 	//[1 to 6] Mode of postprocessing you want. Mode 1 uses V1 values, Mode 2 uses V2 values etc
//
#define	EAdaptationMinV1   		0.05 
#define	EAdaptationMaxV1   		0.125 
#define	EContrastV1   			1.0 
#define	EColorSaturationV1   		1.0 
#define	EToneMappingCurveV1   		6.0 
//	
#define	EAdaptationMinV2 		0.36 
#define	EAdaptationMaxV2 		0.29 
#define	EToneMappingCurveV2 		8.0 
#define	EIntensityContrastV2 		2.5 
#define	EColorSaturationV2		3.2 
#define	EToneMappingOversaturationV2 	180.0 
//
#define	EAdaptationMinV3   		0.001 
#define	EAdaptationMaxV3   		0.025 
#define	EToneMappingCurveV3   		30.0  
#define	EToneMappingOversaturationV3    111160.0 
//
#define	EAdaptationMinV4   		0.2 
#define	EAdaptationMaxV4  		0.125 
#define	EBrightnessCurveV4  		0.7 
#define	EBrightnessMultiplierV4  	0.45 
#define	EBrightnessToneMappingCurveV4   0.3 
//
#define	EAdaptationMinV5   		0.08 
#define	EAdaptationMaxV5   		0.20  
#define	EToneMappingCurveV5   		8  
#define	EIntensityContrastV5   		3.475  
#define	EColorSaturationV5   		4 
#define HCompensateSatV5   		2  
#define	EToneMappingOversaturationV5    180.0 
//
#define	EBrightnessV6Day   		2.5 							
#define EIntensityContrastV6Day   	1.5 					
#define	EColorSaturationV6Day  	 	2.0  					
#define HCompensateSatV6Day   		3.0 						
#define	EAdaptationMinV6Day   		0.64 						
#define	EAdaptationMaxV6Day   		0.24 						
#define	EToneMappingCurveV6Day  	8 
#define	EToneMappingOversaturationV6Day  2500.0 

//COLORMOOD
#define fRatio				2.0 	//[0.00 to 3.00] Amount of moody coloring you want
#define moodR				1.0 	//[0.0 to 2.0] How strong dark red colors shall be boosted
#define moodG				1.1 	//[0.0 to 2.0] How strong dark green colors shall be boosted
#define moodB				0.5 	//[0.0 to 2.0] How strong dark blue colors shall be boosted

//CROSSPROCESS
#define CrossContrast			0.95  	//[0.5 to 2.00] The names of these values should explain their functions
#define CrossSaturation			1.12  	//[0.5 to 2.00]
#define CrossBrightness			-0.052  //[-0.3 to 0.30]
#define CrossAmount			1.0 	//[0.05 to 1.5]

//FILMICPASS
#define Strenght			0.725  	//[0.05 to 1.5] Strength of the color curve altering
#define BaseGamma			1.6	//[0.7 to 2.0] Gamma Curve
#define Fade				0.2	//[0.0 to 0.6] Decreases contrast to imitate faded image
#define Contrast			1.0	//[0.5 to 2.0] Contrast.
#define FSaturation			-0.15
#define FBleach				0.005 	//[-0.5 to 1.0] More bleach means more contrasted and less colorful image
#define FRedCurve			6.0 
#define FGreenCurve			6.0
#define FBlueCurve			6.0
#define BaseCurve			1.5
#define EffectGammaR			1.0
#define EffectGammaG			1.0
#define EffectGammaB			1.0
#define EffectGamma			0.75
#define Linearization			1.3  	//[0.5 to 2.0] Linearizes the color curve

//REINHARD TONEMAP
#define ReinhardWhitepoint		4.0 	//[1.0 to 10.0] Point above which everything is pure white
#define ReinhardScale			0.5 	//[0.0 to 2.0] Amount of applied tonemapping

//REINHARD LINEAR TONEMAP
#define ReinhardLinearWhitepoint	4.4
#define ReinhardLinearPoint		0.06
#define ReinhardLinearSlope		2.25 	//[1.0 to 5.0] how steep the color curve is at linear point. You need color curve understanding to know what this means, just experiment.

//COLORMOD
#define ColormodChroma 			 0.78  		// Saturation
#define ColormodGammaR 			 1.05  		// Gamma for Red color channel
#define ColormodGammaG 			 1.05  		// Gamma for Green color channel
#define ColormodGammaB 			 1.05  		// Gamma for Blue color channel
#define ColormodContrastR 		 0.50  		// Contrast for Red color channel
#define ColormodContrastG 		 0.50  		// ...
#define ColormodContrastB 		 0.50  		// ...
#define ColormodBrightnessR 		 -0.08  	// Brightness for Red color channel
#define ColormodBrightnessG 		 -0.08  	// ...
#define ColormodBrightnessB 		 -0.08  	// ...

//SPHERICAL TONEMAP
#define sphericalAmount 		1.0	//[0.0 to 2.0] Amount of spherical tonemapping applied...sort of

//GODRAYS
#define GODRAYDEPTHCHECK		1	//[0 or 1] if 1, only pixels with depth = 1 get godrays, this prevents white objects from getting godray source which would normally happen in LDR
#define GodraySamples 			128	//[2^x format] How many samples the godrays get
#define GodrayDecay   			0.96  	//[0.5 to 0.9999] How fast they decay. It's logarithmic, 1.0 means infinite long rays which will cover whole screen
#define GodrayExposure			1.0	//[0.7 to 1.5] Upscales the godray's brightness
#define GodrayWeight			1.25	//[0.8 to 1.7] weighting
#define GodrayDensity			1.0	//[0.2 to 2.0] Density of rays, higher means more and brighter rays
#define GodrayThreshold			0.9    	//[0.6 to 1.0] Minimum brightness an object must have to cast godrays

//ANAMORPHIC LENSFLARE
#define ANAMFLAREDEPTHCHECK		1	//[0 or 1] if 1, only pixels with depth = 1 get an anamflare, this prevents white objects from getting flare source which would normally happen in LDR
#define fFlareLuminance 		0.95	//[0.6 to 1.0] bright pass luminance value 
#define fFlareBlur 			200.0	// [1.0 to 9999999] manages the size of the flare
#define fFlareIntensity 		2.07	// [0.2 to 5.0] effect intensity
#define fFlareTint			float3(0.137, 0.216, 1.0)	// [0.0 to 2.0] effect tint RGB

//CHROMATICABBERATION
#define ChromaticAmount			0.009	//[0.005 to 0.03] Amount of color shifting
#define LensSize			0.55   	//[0.5 to 1.0] some lens zoom to hide bugged edges due to texcoord modification
#define LensDistortion	 		0.05   	//[-0.3 to 0.3] distortion of image, fish eye effect
#define LensDistortionCubic		0.05	//[-0.3 to 0.3] distortion of image, fish eye effect, cube based

//LENZ FLARE
#define LENZDEPTHCHECK 			1    	//[0 or 1] if 1, only pixels with depth = 1 get lens flare, this prevents white objects from getting flare source which would normally happen in LDR
#define LenzIntensity 			1.5 	//[0.2 to 3.0] power of lens flare effect
#define LenzThreshold 			0.8 	//[0.6 to 1.0] Minimum brightness an object must have to cast lensflare

//NOISE GRAIN
#define fGrainMotion			0.001  	//[0.0 to 0.1] speed of noise change rate, 0.0 means static noise
#define fGrainSaturation 		0.05 	//[0.05 to 1.0] brightness and chroma difference between the single noise pixels, 0 would mean plain black image added to original image resulting in no noise at all.
#define fGrainIntensity 		0.05  	//[0.05 to 1.0] Power of noise

#define GrainIntensityBright 		0.0	//[0.0 to 2.0] Intensity of Grain in bright areas.
#define GrainIntensityMid 		0.0	//[0.0 to 2.0] Intensity of Grain in midtone areas.
#define GrainIntensityDark 		10.0	//[0.0 to 2.0] Intensity of Grain in dark areas.

//HD6VIGNETTE
#define LEFTANDRIGHT 			0	//[0 or 1] self-explaining, I think. Keep only one of these 3 booleans enabled!!		
#define TOPANDBOTTOM 			1	//[0 or 1] self-explaining, I think. Keep only one of these 3 booleans enabled!!			
#define CORNERDARKEN 			0	//[0 or 1] self-explaining, I think. Keep only one of these 3 booleans enabled!!			
#define SquareTop			0.58
#define SquareBottom			0.58
#define CircularPower			0.0	//[0.0 to 100000.0] amount of circularism (new word invented hoho), 0 means linear vignette, 100000.0 means rougly total circle
#define ColorDistortion			0.0     //[0.0 to 5.0] distorts the colors a bit
#define ContrastSharpen			11.6
#define VignetteBorder			6.5

//STANDARDVIGNETTE
#define EVignetteAmount			2.9	//[0.0 to 5.0] self-explaining variable name
#define EVignetteCurve			1.5	//[0.0 to 5.0] self-explaining variable name
#define EVignetteRadius			0.8	//[0.0 to 5.0] self-explaining variable name
#define VIGNCOLORING			0	//[0 or 1] enables color override, RGB controls below.			
#define VIGNREDAMOUNT			0.0		
#define VIGNGREENAMOUNT			5.0		
#define VIGNBLUEAMOUNT			0.0

//COLOR HUE FX
#define USE_COLORSAT 			0   	//[0 or 1] This will use original color saturation as an added limiter to the strength of the effect
#define hueMid  			0.6	//[0.0 to 1.0] Hue (rotation around the color wheel) of the color which you want to keep
#define hueRange  			0.1	//[0.0 to 1.0] Range of different hue's around the hueMid that will also kept. Using a max range of 1.0 will allow the reverse of the effect where it will only filter a specific hue to B&W
#define satLimit 			2.9	//[0.0 to 4.0] Saturation control, better keep it higher than 0 for strong colors in contrast to the gray stuff around
#define fxcolorMix 			0.8	//[0.0 to 1.0] Interpolation between the original and the effect, 0 means full original image, 1 means full grey-color image.



//+++++++++++++++++++++++++++++

uniform float4 Timer < string source = "framecount";>;
uniform float4 Timer2 < string source = "timer";>;
#define ScreenSize float4(BUFFER_WIDTH, BUFFER_RCP_WIDTH, float(BUFFER_WIDTH) / float(BUFFER_HEIGHT), float(BUFFER_HEIGHT) / float(BUFFER_WIDTH)) //x=Width, y=1/Width, z=ScreenScaleY, w=1/ScreenScaleY
static const  float3 LumCoeff = float3(0.212656, 0.715158, 0.072186);
static const  float PI = 3.1415972;

//textures
texture2D texColor : COLOR;

texture texColorHDR1 { Width = BUFFER_WIDTH; Height = BUFFER_HEIGHT; MipLevels = 1; Format = RGBA32F;};	//ping
texture texColorHDR2 { Width = BUFFER_WIDTH; Height = BUFFER_HEIGHT; MipLevels = 1; Format = RGBA32F;};	//pong

texture2D texDepth : DEPTH;

texture texBloom1 { Width = BUFFER_WIDTH; Height = BUFFER_HEIGHT; MipLevels = 1; Format = RGBA32F;};
texture texBloom2 { Width = BUFFER_WIDTH/2; Height = BUFFER_HEIGHT/2; MipLevels = 1;Format = RGBA32F;};
texture texBloom3 { Width = BUFFER_WIDTH/4; Height = BUFFER_HEIGHT/4; MipLevels = 1;Format = RGBA32F;};
texture texBloom4 { Width = BUFFER_WIDTH/8; Height = BUFFER_HEIGHT/8; MipLevels = 1;Format = RGBA32F;};
texture texBloom5 { Width = BUFFER_WIDTH/16; Height = BUFFER_HEIGHT/16; MipLevels = 1;Format = RGBA32F;};

texture texNoise < string source = "mcnoise.png"; >
{
     Width = 1920;
     Height = 1080;
     MipLevels = 1;
     Format = RGBA8;
};
texture texDirt < string source = "mcdirt.png"; >
{
     Width = 1920;
     Height = 1080;
     MipLevels = 1;
     Format = RGBA8;
};
texture texLut < string source = "mclut.png"; >
{
     Width = 256;
     Height = 1;
     MipLevels = 1;
     Format = RGBA8;
};

sampler2D SamplerColorLDR
{
	Texture = texColor;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=8;
	MipMapLodBias=0;
};

sampler2D SamplerColorHDR1
{
	Texture = texColorHDR1;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=8;
	MipMapLodBias=0;
};

sampler2D SamplerColorHDR2
{
	Texture = texColorHDR2;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=8;
	MipMapLodBias=0;
};

sampler2D SamplerDepth
{
	Texture = texDepth;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = NONE;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=0;
	MipMapLodBias=0;
};

sampler2D SamplerNoise
{
	Texture = texNoise;
	MinFilter = POINT;
	MagFilter = POINT;
	MipFilter = NONE;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=0;
	MipMapLodBias=0;
};

sampler2D SamplerDirt
{
	Texture = texDirt;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = NONE;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=0;
	MipMapLodBias=0;
};

sampler2D SamplerLut
{
	Texture = texLut;
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = NONE;
	AddressU = Clamp;
	AddressV = Clamp;
	SRGBTexture=FALSE;
	MaxMipLevel=0;
	MipMapLodBias=0;
};

sampler SamplerBloom1 { Texture = texBloom1; };
sampler SamplerBloom2 { Texture = texBloom2; };
sampler SamplerBloom3 { Texture = texBloom3; };
sampler SamplerBloom4 { Texture = texBloom4; };
sampler SamplerBloom5 { Texture = texBloom5; };

struct VS_OUTPUT_POST
{
	float4 vpos : SV_Position;
	float2 txcoord : TEXCOORD0;
};

struct VS_INPUT_POST
{
	uint id : SV_VertexID;
};

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Vertex shader
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

VS_OUTPUT_POST VS_PostProcess(VS_INPUT_POST IN)
{
	VS_OUTPUT_POST OUT;
	OUT.txcoord.x = (IN.id == 2) ? 2.0 : 0.0;
	OUT.txcoord.y = (IN.id == 1) ? 2.0 : 0.0;
	OUT.vpos = float4(OUT.txcoord * float2(2.0, -2.0) + float2(-1.0, 1.0), 0.0, 1.0);
	return OUT;
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Functions
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

float GrayScale (in float3 input)
{
	return dot(input, float3(0.3, 0.59, 0.11));
}

float random(in float2 uv)
{
    float2 noise = (frac(sin(dot(uv , float2(12.9898,78.233) * 2.0)) * 43758.5453));
    return abs(noise.x + noise.y) * 0.5;
}


float Luminance( float3 c )
{
	return dot( c, float3(0.22, 0.707, 0.071) );
}

float vignette(float2 coord, float _int)
{
	float2 coords = coord;
	coords = (coords - 0.5) * 2.0;		
	float coordDot = dot (coords,coords);	
	return 1.0 - coordDot * _int * 0.1;
}

float linearize(float depth)
{
	return -zfar * znear / (depth * (zfar - znear) - zfar);
}

float2 rand(float2 coord) //generating noise/pattern texture for dithering
{
	float noiseX = ((frac(3.0-coord.x*(ScreenSize.x/0.2))*3.25)+(frac(coord.y*(ScreenSize.x*ScreenSize.z/0.2))*3.75))*0.1-0.2;
	float noiseY = ((frac(3.0-coord.x*(ScreenSize.x/0.2))*3.75)+(frac(coord.y*(ScreenSize.x*ScreenSize.z/0.2))*3.25))*0.1-0.2;
	
	return float2(noiseX,noiseY);
}

#define fFlareAxis			0		// blur axis
//people should not change that due to changes I made to the shader (blur in y direction so vertical flares would get no blur
//too lazy to adapt that so I'll keep it here

float3 BrightPass(float2 tex)
{
	float3 c = tex2D(SamplerColorHDR2, tex).rgb;
    	float3 bC = max(c - float3(fFlareLuminance, fFlareLuminance, fFlareLuminance), 0.0);
    	float bright = dot(bC, 1.0);
    	bright = smoothstep(0.0f, 0.5, bright);
	float3 result = lerp(0.0, c, bright);

	#if (ANAMFLAREDEPTHCHECK == 1)
	float checkdepth = tex2D(SamplerDepth, tex).x;
	if(checkdepth < 0.99999) result = 0;
	#endif

	return result;

}

float3 AnamorphicSample(int axis, float2 tex, float blur)
{
	tex = 2.0 * tex - 1.0;
	if (!axis) tex.x /= -blur;
	else tex.y /= -blur;
	tex = 0.5 * tex + 0.5;
	return BrightPass(tex);
}

float mod(float x, float y)
{
	return x - y * floor (x/y);
}

float smootherstep(float edge0, float edge1, float x)
{
   x = clamp((x - edge0)/(edge1 - edge0), 0.0, 1.0);
   return x*x*x*(x*(x*6 - 15) + 10);
}

float3 Hue(in float3 RGB)
{
   // Based on work by Sam Hocevar and Emil Persson
   float Epsilon = 1e-10;
   float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0/3.0) : float4(RGB.gb, 0.0, -1.0/3.0);
   float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
   float C = Q.x - min(Q.w, Q.y);
   float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
   return float3(H, C, Q.x);
}
/*
float4 ChromaticAberrationPass(float2 tex, float outOfFocus)
{
	float d = distance(tex, float2(0.5, 0.5));
	float f = smoothstep(fBaseRadius, fFalloffRadius, d + outOfFocus * d);
	float3 chroma = pow(f + fvChroma, fChromaPower);
	
	float2 tr = ((2.0 * tex - 1.0) * chroma.r) * 0.5 + 0.5;
	float2 tg = ((2.0 * tex - 1.0) * chroma.g) * 0.5 + 0.5;
	float2 tb = ((2.0 * tex - 1.0) * chroma.b) * 0.5 + 0.5;
	
	float3 color = float3(tex2D(SamplerColor, tr).r, tex2D(SamplerColor, tg).g, tex2D(SamplerColor, tb).b) * (1.0 - f);
	
	return float4(color, 1.0);
}
*/
float4 ChromaticAberrationFocusPass(float2 tex, float outOfFocus, sampler inputsampler)
{
	float3 chroma = pow(fvChroma, CHROMA_POW * outOfFocus);

	float2 tr = ((2.0 * tex - 1.0) * chroma.r) * 0.5 + 0.5;
	float2 tg = ((2.0 * tex - 1.0) * chroma.g) * 0.5 + 0.5;
	float2 tb = ((2.0 * tex - 1.0) * chroma.b) * 0.5 + 0.5;
	
	float3 color = float3(tex2D(inputsampler, tr).r, tex2D(inputsampler, tg).g, tex2D(inputsampler, tb).b) * (1.0 - outOfFocus);
	
	return float4(color, 1.0);
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Passes
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

float penta(float2 coords) //pentagonal shape
{
	float scale = float(rings) - 1.5;
	float4  HS0 = float4( -20.0, -15.0, -15.0, -20.0);
	float4  HS1 = float4( -20.0, -15.0, -15.0, -20.0);
	float4  HS2 = float4( -20.0, -15.0, -15.0, -20.0);
	float4  HS3 = float4( -20.0, -15.0, -15.0, -20.0);
	float4  HS4 = float4( -20.0, -15.0, -15.0, -20.0);
	float4  HS5 = float4( -20.0, -15.0, -15.0, -20.0);
	
	float4  one = float4(8.0, 8.0, 8.0, 8.0);
	
	float4 P = float4(coords,float2(scale, scale)); 
	
	float4 dist = float4(4.0, 4.0, 4.0, 4.0);
	float inorout = 0.0;
	
	dist.x = dot( P, HS0 );
	dist.y = dot( P, HS1 );
	dist.z = dot( P, HS2 );
	dist.w = dot( P, HS3 );
	
	dist = smoothstep( -feather, feather, dist );
	
	inorout += dot( dist, one );
	
	dist.x = dot( P, HS4 );
	dist.y = HS5.w - abs( P.z );
	
	dist = smoothstep( -feather, feather, dist );
	inorout += dist.x;
	
	return saturate( inorout );
}

float4 colorDof(float2 coords,float blur) //processing the sample
{
	float4 colDF = float4(1,1,1,1);

	float2 pixelsize = ScreenSize.y;
	pixelsize.y *= ScreenSize.z;

	colDF.x = tex2Dlod(SamplerColorHDR1,float4(coords + float2(0.0,1.0)*pixelsize*fringe*blur,0,0)).x;
	colDF.y = tex2Dlod(SamplerColorHDR1,float4(coords + float2(-0.866,-0.5)*pixelsize*fringe*blur,0,0)).y;
	colDF.z = tex2Dlod(SamplerColorHDR1,float4(coords + float2(0.866,-0.5)*pixelsize*fringe*blur,0,0)).z;

	float3 lumcoeff = float3(0.299,0.587,0.114);
	float lum = dot(colDF.xyz,lumcoeff);
	float thresh = max((lum-threshold)*gain, 0.0);
	float3 nullcol = float3(0,0,0);
	colDF.xyz +=max(0,lerp(nullcol.xyz,colDF.xyz,thresh*blur));
	return colDF;
}

float3 ExplosionPass( float3 colorInput, float2 tex, float2 pixelsize )
{

  	// -- pseudo random number generator --
  	float2 sine_cosine;
  	sincos(dot(tex, float2(12.9898,78.233)),sine_cosine.x,sine_cosine.y);
  	sine_cosine = sine_cosine * 43758.5453 + tex;
  	float2 noise = frac(sine_cosine);

  	tex = (-Explosion_Radius * pixelsize) + tex; //Slightly faster this way because it can be calculated while we calculate noise.
  
  	colorInput.rgb = tex2D(SamplerColorHDR2, (2.0 * Explosion_Radius * pixelsize) * noise + tex).rgb;
  
 
  	return colorInput;
}

float3 CartoonPass( float3 colorInput, float2 tex, float2 pixelsize )
{
 
  	float diff1 = dot(LumCoeff,tex2D(SamplerColorHDR1, tex + pixelsize).rgb);
  	diff1 = dot(float4(LumCoeff,-1.0),float4(tex2D(SamplerColorHDR1, tex - pixelsize).rgb , diff1));
  
  	float diff2 = dot(LumCoeff,tex2D(SamplerColorHDR1, tex +float2(pixelsize.x,-pixelsize.y)).rgb);
  	diff2 = dot(float4(LumCoeff,-1.0),float4(tex2D(SamplerColorHDR1, tex +float2(-pixelsize.x,pixelsize.y)).rgb , diff2));
    
  	float edge = dot(float2(diff1,diff2),float2(diff1,diff2));
  
  	colorInput.rgb =  pow(edge,CartoonEdgeSlope) * -CartoonPower + colorInput.rgb;
	
	return saturate(colorInput);
}

float3 SharpPass( float3 colorInput, float2 tex, float2 pixelsize )
{
 
    	float3 blur_ori = tex2D(SamplerColorHDR1, tex + float2(0.5 * pixelsize.x,-pixelsize.y * SharpBias)).rgb*0.25;  	// South South East
    	blur_ori += tex2D(SamplerColorHDR1, tex + float2(SharpBias * -pixelsize.x,0.5 * -pixelsize.y)).rgb*0.25; 		// West South West
   	blur_ori += tex2D(SamplerColorHDR1, tex + float2(SharpBias * pixelsize.x,0.5 * pixelsize.y)).rgb*0.25; 		// East North East
    	blur_ori += tex2D(SamplerColorHDR1, tex + float2(0.5 * -pixelsize.x,pixelsize.y * SharpBias)).rgb*0.25;		// North North West

	float3 sharp = colorInput - blur_ori;
	float sharp_luma = dot(sharp, SharpStrength);
	
	sharp_luma = clamp(sharp_luma, -SharpClamp, SharpClamp);
	
	float3 done = tex2D(SamplerColorHDR1, tex).rgb + sharp_luma; 

	colorInput = done;

	return colorInput;
}

float3 LevelsPass( float3 colorInput )
{
	#define black_point_float ( Levels_black_point / 255.0 )
	#define white_point_float ( 255.0 / (Levels_white_point - Levels_black_point)) 

 	colorInput.rgb = colorInput.rgb * white_point_float - (black_point_float *  white_point_float);
  	return colorInput;
}

float3 TechniPass_prod80(float3 colorInput)
{

	float3 colStrength = float3(ColStrengthR,ColStrengthG,ColStrengthB);
	float3 tsource = saturate(colorInput.rgb);
	float3 ttemp = 1 - tsource;
	float3 ttarget = ttemp.grg;
	float3 ttarget2 = ttemp.bbr;
	float3 ttemp2 = tsource.rgb * ttarget.rgb;
	ttemp2.rgb *= ttarget2.rgb;

	ttemp.rgb = ttemp2.rgb * colStrength;
	ttemp2.rgb *= TechniBrightness;

	ttarget.rgb = ttemp.grg;
	ttarget2.rgb = ttemp.bbr;

	ttemp.rgb = tsource.rgb - ttarget.rgb;
	ttemp.rgb += ttemp2.rgb;
	ttemp2.rgb = ttemp.rgb - ttarget2.rgb;

	colorInput.rgb = lerp(tsource.rgb, ttemp2.rgb, TechniStrength);

	colorInput.rgb = lerp(dot(colorInput.rgb, 0.333), colorInput.rgb, TechniSat); 
	
	return colorInput.rgb;

}

float3 TechnicolorPass( float3 colorInput )
{

	#define cyanfilter float3(0.0, 1.30, 1.0)
	#define magentafilter float3(1.0, 0.0, 1.05) 
	#define yellowfilter float3(1.6, 1.6, 0.05)

	#define redorangefilter float2(1.05, 0.620) //RG_
	#define greenfilter float2(0.30, 1.0)       //RG_
	#define magentafilter2 magentafilter.rb     //R_B

	float3 tcol = colorInput.rgb;
	
  	float2 rednegative_mul   = tcol.rg * (1.0 / (redNegativeAmount * TechniPower));
	float2 greennegative_mul = tcol.rg * (1.0 / (greenNegativeAmount * TechniPower));
	float2 bluenegative_mul  = tcol.rb * (1.0 / (blueNegativeAmount * TechniPower));
	
  	float rednegative   = dot( redorangefilter, rednegative_mul );
	float greennegative = dot( greenfilter, greennegative_mul );
	float bluenegative  = dot( magentafilter2, bluenegative_mul );
	
	float3 redoutput   = rednegative.rrr + cyanfilter;
	float3 greenoutput = greennegative.rrr + magentafilter;
	float3 blueoutput  = bluenegative.rrr + yellowfilter;
	
	float3 result = redoutput * greenoutput * blueoutput;
	colorInput.rgb = lerp(tcol, result, TechniAmount);
	return colorInput;
}

float3 DPXPass(float3 InputColor){


	float3x3 RGB =
	float3x3(
	2.67147117265996,-1.26723605786241,-0.410995602172227,
	-1.02510702934664,1.98409116241089,0.0439502493584124,
	0.0610009456429445,-0.223670750812863,1.15902104167061
	);

	float3x3 XYZ =
	float3x3(
	0.500303383543316,0.338097573222739,0.164589779545857,
	0.257968894274758,0.676195259144706,0.0658358459823868,
	0.0234517888692628,0.1126992737203,0.866839673124201
	);

	float DPXContrast = 0.1;
	float DPXGamma = 1.0;

	float RedCurve = DPXRed;
	float GreenCurve = DPXGreen;
	float BlueCurve = DPXBlue;
	
	float3 RGB_Curve = float3(DPXRed,DPXGreen,DPXBlue);
	float3 RGB_C = float3(DPXRedC,DPXGreenC,DPXBlueC);

	float3 B = InputColor.rgb;
	B = pow(B, 1.0/DPXGamma);
 	B = B * (1.0 - DPXContrast) + (0.5 * DPXContrast);

	float3 Btemp = (1.0 / (1.0 + exp(RGB_Curve / 2.0)));	  
	B = ((1.0 / (1.0 + exp(-RGB_Curve * (B - RGB_C)))) / (-2.0 * Btemp + 1.0)) + (-Btemp / (-2.0 * Btemp + 1.0));

    	float value = max(max(B.r, B.g), B.b);
	float3 color = B / value;
	color = saturate(color);
	color = pow(color, 1.0/DPXColorGamma);
	
	float3 c0 = color * value;
        c0 = mul(XYZ, c0);

	float luma = dot(c0, float3(0.30, 0.59, 0.11)); //Use BT 709 instead?
        c0 = (1.0 - DPXSaturation) * luma + DPXSaturation * c0;
	c0 = mul(RGB, c0);
	
	InputColor.rgb = lerp(InputColor.rgb, c0, DPXBlend);

	return InputColor;
}

float3 LiftGammaGainPass( float3 colorInput )
{
	// -- Get input --
	float3 color = colorInput.rgb;
	
	// -- Lift --
	color = color * (1.5-0.5 * RGB_Lift) + 0.5 * RGB_Lift - 0.5;
	color = saturate(color); //isn't strictly necessary, but doesn't cost performance.
	
	// -- Gain --
	color *= RGB_Gain; 
	
	// -- Gamma --
	colorInput.rgb = pow(color, 1.0 / RGB_Gamma); //Gamma
	
	// -- Return output --
	//return (colorInput);
	return saturate(colorInput);
}

float3 TonemapPass( float3 colorInput )
{
	float3 color = colorInput.rgb;

	color = saturate(color - Defog * FogColor); // Defog
	
	color *= pow(2.0f, Exposure); // Exposure
	
	color = pow(color, Gamma);    // Gamma -- roll into the first gamma correction in main.h ?
	
	float lum = dot(LumCoeff, color.rgb);
	
	float3 blend = lum.rrr; //dont use float3
	
	float L = saturate( 10.0 * (lum - 0.45) );
  	
	float3 result1 = 2.0f * color.rgb * blend;
	float3 result2 = 1.0f - 2.0f * (1.0f - blend) * (1.0f - color.rgb);
	
	float3 newColor = lerp(result1, result2, L);
	float3 A2 = Bleach * color.rgb; //why use a float for A2 here and then multiply by color.rgb (a float3)?
	float3 mixRGB = A2 * newColor;
	
	color.rgb += ((1.0f - A2) * mixRGB);
	
	float3 middlegray = dot(color,(1.0/3.0)); //1fps slower than the original on nvidia, 2 fps faster on AMD
	
	float3 diffcolor = color - middlegray; //float 3 here
	colorInput.rgb = (color + diffcolor * Saturation)/(1+(diffcolor*Saturation)); //saturation
	
	return colorInput;
}

float3 VibrancePass( float3 colorInput )
{
   	#define Vibrance_coeff float3(Vibrance_RGB_balance * Vibrance)

	float3 color = colorInput; //original input color
  	float3 lumCoeff = float3(0.212656, 0.715158, 0.072186);  //Values to calculate luma with

	float luma = dot(LumCoeff, color.rgb); //calculate luma (grey)

	float max_color = max(colorInput.r, max(colorInput.g,colorInput.b)); //Find the strongest color
	float min_color = min(colorInput.r, min(colorInput.g,colorInput.b)); //Find the weakest color

  	float color_saturation = max_color - min_color; //The difference between the two is the saturation

   	color.rgb = lerp(luma, color.rgb, (1.0 + (Vibrance_coeff * (1.0 - (sign(Vibrance_coeff) * color_saturation))))); //extrapolate between luma and original by 1 + (1-saturation) - current

 	return color; //return the result
}

float3 CurvesPass( float3 colorInput )
{
  float Curves_contrast_blend = Curves_contrast;


   /*-----------------------------------------------------------.
  /               Separation of Luma and Chroma                 /
  '-----------------------------------------------------------*/

  	// -- Calculate Luma and Chroma if needed --
  	#if Curves_mode != 2

    	//calculate luma (grey)
    	float luma = dot(LumCoeff, colorInput.rgb);

    	//calculate chroma
	float3 chroma = colorInput.rgb - luma;
  	#endif

  	// -- Which value to put through the contrast formula? --
  	// I name it x because makes it easier to copy-paste to Graphtoy or Wolfram Alpha or another graphing program
  	#if Curves_mode == 2
	float3 x = colorInput.rgb; //if the curve should be applied to both Luma and Chroma
	#elif Curves_mode == 1
	float3 x = chroma; //if the curve should be applied to Chroma
	x = x * 0.5 + 0.5; //adjust range of Chroma from -1 -> 1 to 0 -> 1
  	#else // Curves_mode == 0
    	float x = luma; //if the curve should be applied to Luma
  	#endif

   /*-----------------------------------------------------------.
  /                     Contrast formulas                       /
  '-----------------------------------------------------------*/

  	// -- Curve 1 --
  	#if Curves_formula == 1
    	x = sin(PI * 0.5 * x); // Sin - 721 amd fps, +vign 536 nv
    	x *= x;
    
    	//x = 0.5 - 0.5*cos(PI*x);
    	//x = 0.5 * -sin(PI * -x + (PI*0.5)) + 0.5;
  	#endif

  	// -- Curve 2 --
  	#if Curves_formula == 2
    	x = x - 0.5;  
    	x = ( x / (0.5 + abs(x)) ) + 0.5;
    
    	//x = ( (x - 0.5) / (0.5 + abs(x-0.5)) ) + 0.5;
  	#endif

  	// -- Curve 3 --
  	#if Curves_formula == 3
    	//x = smoothstep(0.0,1.0,x); //smoothstep
    	x = x*x*(3.0-2.0*x); //faster smoothstep alternative - 776 amd fps, +vign 536 nv
    	//x = x - 2.0 * (x - 1.0) * x* (x- 0.5);  //2.0 is contrast. Range is 0.0 to 2.0
  	#endif

  	// -- Curve 4 --
  	#if Curves_formula == 4
    	x = (1.0524 * exp(6.0 * x) - 1.05248) / (20.0855 + exp(6.0 * x)); //exp formula
  	#endif

  	// -- Curve 5 --
  	#if Curves_formula == 5
    	//x = 0.5 * (x + 3.0 * x * x - 2.0 * x * x * x); //a simplified catmull-rom (0,0,1,1) - btw smoothstep can also be expressed as a simplified catmull-rom using (1,0,1,0)
    	//x = (0.5 * x) + (1.5 -x) * x*x; //estrin form - faster version
    	x = x * (x * (1.5-x) + 0.5); //horner form - fastest version

    	Curves_contrast_blend = Curves_contrast * 2.0; //I multiply by two to give it a strength closer to the other curves.
  	#endif

 	// -- Curve 6 --
  	#if Curves_formula == 6
    	x = x*x*x*(x*(x*6.0 - 15.0) + 10.0); //Perlins smootherstep
  	#endif

	// -- Curve 7 --
  	#if Curves_formula == 7
    	//x = ((x-0.5) / ((0.5/(4.0/3.0)) + abs((x-0.5)*1.25))) + 0.5;
	x = x - 0.5;
	x = x / ((abs(x)*1.25) + 0.375 ) + 0.5;
	//x = ( (x-0.5) / ((abs(x-0.5)*1.25) + (0.5/(4.0/3.0))) ) + 0.5;
  	#endif

  	// -- Curve 8 --
  	#if Curves_formula == 8
    	x = (x * (x * (x * (x * (x * (x * (1.6 * x - 7.2) + 10.8) - 4.2) - 3.6) + 2.7) - 1.8) + 2.7) * x * x; //Techicolor Cinestyle - almost identical to curve 1
  	#endif

  	// -- Curve 9 --
  	#if Curves_formula == 9
    	x =  -0.5 * (x*2.0-1.0) * (abs(x*2.0-1.0)-2.0) + 0.5; //parabola
  	#endif

  	// -- Curve 10 --
  	#if Curves_formula == 10 //Half-circles

    	#if Curves_mode == 0
      	float xstep = step(x,0.5);
	float xstep_shift = (xstep - 0.5);
	float shifted_x = x + xstep_shift;
   	#else
      	float3 xstep = step(x,0.5);
	float3 xstep_shift = (xstep - 0.5);
	float3 shifted_x = x + xstep_shift;
    	#endif

	x = abs(xstep - sqrt(-shifted_x * shifted_x + shifted_x) ) - xstep_shift;

  	//x = abs(step(x,0.5)-sqrt(-(x+step(x,0.5)-0.5)*(x+step(x,0.5)-0.5)+(x+step(x,0.5)-0.5)))-(step(x,0.5)-0.5); //single line version of the above
    
  	//x = 0.5 + (sign(x-0.5)) * sqrt(0.25-(x-trunc(x*2))*(x-trunc(x*2))); //worse
  
  	/* // if/else - even worse
  	if (x-0.5)
  	x = 0.5-sqrt(0.25-x*x);
  	else
  	x = 0.5+sqrt(0.25-(x-1)*(x-1));
	*/

  	//x = (abs(step(0.5,x)-clamp( 1-sqrt(1-abs(step(0.5,x)- frac(x*2%1)) * abs(step(0.5,x)- frac(x*2%1))),0 ,1))+ step(0.5,x) )*0.5; //worst so far
	
	//TODO: Check if I could use an abs split instead of step. It might be more efficient
	
	Curves_contrast_blend = Curves_contrast * 0.5; //I divide by two to give it a strength closer to the other curves.
  	#endif

  	// -- Curve 11 --
  	#if Curves_formula == 11 //Cubic catmull
    	float a = 1.00; //control point 1
    	float b = 0.00; //start point
    	float c = 1.00; //endpoint
    	float d = 0.20; //control point 2
    	x = 0.5 * ((-a + 3*b -3*c + d)*x*x*x + (2*a -5*b + 4*c - d)*x*x + (-a+c)*x + 2*b); //A customizable cubic catmull-rom spline
  	#endif

  	// -- Curve 12 --
  	#if Curves_formula == 12 //Cubic Bezier spline
    	float a = 0.00; //start point
    	float b = 0.00; //control point 1
    	float c = 1.00; //control point 2
    	float d = 1.00; //endpoint

    	float r  = (1-x);
	float r2 = r*r;
	float r3 = r2 * r;
	float x2 = x*x;
	float x3 = x2*x;
	//x = dot(float4(a,b,c,d),float4(r3,3*r2*x,3*r*x2,x3));

	//x = a * r*r*r + r * (3 * b * r * x + 3 * c * x*x) + d * x*x*x;
	//x = a*(1-x)*(1-x)*(1-x) +(1-x) * (3*b * (1-x) * x + 3 * c * x*x) + d * x*x*x;
	x = a*(1-x)*(1-x)*(1-x) + 3*b*(1-x)*(1-x)*x + 3*c*(1-x)*x*x + d*x*x*x;
  	#endif

  	// -- Curve 13 --
  	#if Curves_formula == 13 //Cubic Bezier spline - alternative implementation.
    	float3 a = float3(0.00,0.00,0.00); //start point
    	float3 b = float3(0.25,0.15,0.85); //control point 1
    	float3 c = float3(0.75,0.85,0.15); //control point 2
    	float3 d = float3(1.00,1.00,1.00); //endpoint

    	float3 ab = lerp(a,b,x);           // point between a and b
    	float3 bc = lerp(b,c,x);           // point between b and c
    	float3 cd = lerp(c,d,x);           // point between c and d
    	float3 abbc = lerp(ab,bc,x);       // point between ab and bc
    	float3 bccd = lerp(bc,cd,x);       // point between bc and cd
    	float3 dest = lerp(abbc,bccd,x);   // point on the bezier-curve
    	x = dest;
  	#endif

  	// -- Curve 14 --
  	#if Curves_formula == 14
    	x = 1.0 / (1.0 + exp(-(x * 10.0 - 5.0))); //alternative exp formula
  	#endif

   /*-----------------------------------------------------------.
  /                 Joining of Luma and Chroma                  /
  '-----------------------------------------------------------*/

  	#if Curves_mode == 2 //Both Luma and Chroma
	float3 color = x;  //if the curve should be applied to both Luma and Chroma
	colorInput.rgb = lerp(colorInput.rgb, color, Curves_contrast_blend); //Blend by Curves_contrast

  	#elif Curves_mode == 1 //Only Chroma
	x = x * 2.0 - 1.0; //adjust the Chroma range back to -1 -> 1
	float3 color = luma + x; //Luma + Chroma
	colorInput.rgb = lerp(colorInput.rgb, color, Curves_contrast_blend); //Blend by Curves_contrast

  	#else // Curves_mode == 0 //Only Luma
    	x = lerp(luma, x, Curves_contrast_blend); //Blend by Curves_contrast
    	colorInput.rgb = x + chroma; //Luma + Chroma

  	#endif

  	//Return the result
  	return colorInput;
}

float3 SepiaPass( float3 colorInput )
{
	float3 sepia = colorInput.rgb;
	
	// calculating amounts of input, grey and sepia colors to blend and combine
	float grey = dot(sepia, LumCoeff);
	sepia *= ColorTone;
	
	float3 blend2 = (grey * GreyPower) + (colorInput.rgb / (GreyPower + 1));

	colorInput.rgb = lerp(blend2, sepia, SepiaPower);
	// returning the final color
	return colorInput;
}

float3 SkyrimTonemapPass( float3 color )
{
	float	grayadaptation = dot(color.xyz, LumCoeff);

	#if (POSTPROCESS==1)
	color.xyz =  color.xyz / (grayadaptation * EAdaptationMaxV1 + EAdaptationMinV1);
	float cgray = dot( color.xyz, LumCoeff);
	cgray = pow(cgray, EContrastV1);
	float3 poweredcolor = pow( abs(color.xyz), EColorSaturationV1);
	float newgray = dot(poweredcolor.xyz, LumCoeff);
	color.xyz = poweredcolor.xyz * cgray / (newgray + 0.0001);
	float3	luma =  color.xyz;
	float	lumamax = 300.0;
	color.xyz = ( color.xyz * (1.0 +  color.xyz / lumamax)) / ( color.xyz + EToneMappingCurveV1);	
	#endif

	#if (POSTPROCESS==2)
	color.xyz =  color.xyz / (grayadaptation * EAdaptationMaxV2 + EAdaptationMinV2);
	float3 xncol = normalize( color.xyz);
	float3 scl =  color.xyz / xncol.xyz;
	scl = pow(scl, EIntensityContrastV2);
	xncol.xyz = pow(xncol.xyz, EColorSaturationV2);
	color.xyz = scl*xncol.xyz;
	float	lumamax = EToneMappingOversaturationV2;
	color.xyz = ( color.xyz * (1.0 +  color.xyz / lumamax)) / ( color.xyz + EToneMappingCurveV2);
 	color.xyz*=4;
	#endif

	#if (POSTPROCESS==3)
	color.xyz *= 35;
	float	lumamax = EToneMappingOversaturationV3;
	color.xyz = ( color.xyz * (1.0 +  color.xyz / lumamax)) / ( color.xyz + EToneMappingCurveV3);
	#endif

	#if (POSTPROCESS == 4)
	color.xyz =  color.xyz / (grayadaptation * EAdaptationMaxV4 + EAdaptationMinV4);
	float Y = dot( color.xyz, float3(0.299, 0.587, 0.114)); //0.299 * R + 0.587 * G + 0.114 * B;
	float U = dot( color.xyz, float3(-0.14713, -0.28886, 0.436)); //-0.14713 * R - 0.28886 * G + 0.436 * B;
	float V = dot( color.xyz, float3(0.615, -0.51499, -0.10001)); //0.615 * R - 0.51499 * G - 0.10001 * B;
	Y = pow(Y, EBrightnessCurveV4);
	Y = Y * EBrightnessMultiplierV4;
	color.xyz = V * float3(1.13983, -0.58060, 0.0) + U * float3(0.0, -0.39465, 2.03211) + Y;
	color.xyz = max( color.xyz, 0.0);
	color.xyz =  color.xyz / ( color.xyz + EBrightnessToneMappingCurveV4);
	#endif

	#if (POSTPROCESS == 5)
	float hnd = 1;
	float2 hndtweak = float2( 3.1 , 1.5 );
        color.xyz *= lerp( hndtweak.x, hndtweak.y, hnd );
	float3 xncol = normalize( color.xyz);
	float3 scl =  color.xyz/xncol.xyz;
	scl = pow(scl, EIntensityContrastV5);
	xncol.xyz = pow(xncol.xyz, EColorSaturationV5);
	color.xyz = scl*xncol.xyz;
	color.xyz *= HCompensateSatV5; // compensate for darkening caused my EcolorSat above
	color.xyz =  color.xyz / ( color.xyz + EToneMappingCurveV5);
	color.xyz *= 4;
	#endif

	#if (POSTPROCESS==6)
	//Postprocessing V6 by Kermles
	//tuned by the master himself for ME 1.4, thanks man!!!
	//hd6/ppv2///////////////////////////////////////////
	float 	EIntensityContrastV6 = EIntensityContrastV6Day;
	float 	EColorSaturationV6 = EColorSaturationV6Day;
	float 	HCompensateSatV6 = HCompensateSatV6Day;
	float 	EToneMappingCurveV6 = EToneMappingCurveV6Day;
	float 	EBrightnessV6 = EBrightnessV6Day;
	float 	EToneMappingOversaturationV6 = EToneMappingOversaturationV6Day;
	float 	EAdaptationMaxV6 = EAdaptationMaxV6Day;
	float 	EAdaptationMinV6 = EAdaptationMinV6Day;
	float	lumamax = EToneMappingOversaturationV6;
	//kermles////////////////////////////////////////////
	float4 	ncolor;					//temporary variable for color adjustments		
	//begin pp code/////////////////////////////////////////////////
	//ppv2 modified by kermles//////////////////////////////////////
		
	grayadaptation = clamp(grayadaptation, 0, 50);
	color.xyz *= EBrightnessV6;
	float3 xncol = normalize( color.xyz);
	float3 scl =  color.xyz/xncol.xyz;
	scl = pow(saturate(scl), EIntensityContrastV6);
	xncol.xyz = pow(xncol.xyz, EColorSaturationV6);
	color.xyz = scl*xncol.xyz;
	color.xyz *= HCompensateSatV6;
	color.xyz = ( color.xyz * (1.0 +  color.xyz/lumamax))/( color.xyz + EToneMappingCurveV6);
	color.xyz /= grayadaptation*EAdaptationMaxV6+EAdaptationMinV6;
	//rerun ppv2////////////////////////////////////////////////////
	color.xyz *= EBrightnessV6;
	xncol = normalize( color.xyz);
	scl =  color.xyz/xncol.xyz;
	scl = saturate(scl);
	scl = pow(scl, EIntensityContrastV6);
	xncol.xyz = pow(xncol.xyz, EColorSaturationV6);
	color.xyz = scl*xncol.xyz;
	color.xyz *= HCompensateSatV6;
	color.xyz = ( color.xyz * (1.0 +  color.xyz/lumamax))/( color.xyz + EToneMappingCurveV6);
	#endif

	return color;

}

float3 MoodPass( float3 colorInput )
{
	float3 colInput = colorInput;
	float3 colMood = 1.0f;
	colMood.r = moodR;
	colMood.g = moodG;
	colMood.b = moodB;
	float fLum = ( colInput.r + colInput.g + colInput.b ) / 3;
	colMood = lerp(0, colMood, saturate(fLum * 2.0));
	colMood = lerp(colMood, 1, saturate(fLum - 0.5) * 2.0);
	float3 colOutput = lerp(colInput, colMood, saturate(fLum * fRatio));
	colorInput=max(0, colOutput);
	return colorInput;
}

float3 CrossPass(float3 color)
{
	float2 CrossMatrix [3] = {
		float2 (1.03, 0.04),
		float2 (1.09, 0.01),
		float2 (0.78, 0.13),
 		};

	float3 image1 = color;
	float3 image2 = color;
	float gray = dot(float3(0.5,0.5,0.5), image1);  
	image1 = lerp (gray, image1,CrossSaturation);
	image1 = lerp (0.35, image1,CrossContrast);
	image1 +=CrossBrightness;
	image2.r = image1.r * CrossMatrix[0].x + CrossMatrix[0].y;
	image2.g = image1.g * CrossMatrix[1].x + CrossMatrix[1].y;
	image2.b = image1.b * CrossMatrix[2].x + CrossMatrix[2].y;
	color = lerp(image1, image2, CrossAmount);
	return color;
}

float3 FilmPass(float3 B)
{
	float3 G = B;
	float3 H = 0.01;
 
	B = saturate(B);
	B = pow(B, Linearization);
	B = lerp(H, B, Contrast);
 
	float A = dot(B.rgb, LumCoeff);
	float3 D = A;
 
	B = pow(B, 1.0 / BaseGamma);
 
	float a = FRedCurve;
	float b = FGreenCurve;
	float c = FBlueCurve;
	float d = BaseCurve;
 
	float y = 1.0 / (1.0 + exp(a / 2.0));
	float z = 1.0 / (1.0 + exp(b / 2.0));
	float w = 1.0 / (1.0 + exp(c / 2.0));
	float v = 1.0 / (1.0 + exp(d / 2.0));
 
	float3 C = B;
 
	D.r = (1.0 / (1.0 + exp(-a * (D.r - 0.5))) - y) / (1.0 - 2.0 * y);
	D.g = (1.0 / (1.0 + exp(-b * (D.g - 0.5))) - z) / (1.0 - 2.0 * z);
	D.b = (1.0 / (1.0 + exp(-c * (D.b - 0.5))) - w) / (1.0 - 2.0 * w);
 
	D = pow(D, 1.0 / EffectGamma);
 
	float3 Di = 1.0 - D;
 
	D = lerp(D, Di, FBleach);
 
	D.r = pow(abs(D.r), 1.0 / EffectGammaR);
	D.g = pow(abs(D.g), 1.0 / EffectGammaG);
	D.b = pow(abs(D.b), 1.0 / EffectGammaB);
 
	if (D.r < 0.5)
		C.r = (2.0 * D.r - 1.0) * (B.r - B.r * B.r) + B.r;
	else
		C.r = (2.0 * D.r - 1.0) * (sqrt(B.r) - B.r) + B.r;
 
	if (D.g < 0.5)
		C.g = (2.0 * D.g - 1.0) * (B.g - B.g * B.g) + B.g;
	else
		C.g = (2.0 * D.g - 1.0) * (sqrt(B.g) - B.g) + B.g;
 	//if (AgainstAllAutority) 
	if (D.b < 0.5)
		C.b = (2.0 * D.b - 1.0) * (B.b - B.b * B.b) + B.b;
	else
		C.b = (2.0 * D.b - 1.0) * (sqrt(B.b) - B.b) + B.b;
 
	float3 F = lerp(B, C, Strenght);
 
	F = (1.0 / (1.0 + exp(-d * (F - 0.5))) - v) / (1.0 - 2.0 * v);
 
	float r2R = 1.0 - FSaturation;
	float g2R = 0.0 + FSaturation;
	float b2R = 0.0 + FSaturation;
 
	float r2G = 0.0 + FSaturation;
	float g2G = (1.0 - Fade) - FSaturation;
	float b2G = (0.0 + Fade) + FSaturation;
 
	float r2B = 0.0 + FSaturation;
	float g2B = (0.0 + Fade) + FSaturation;
	float b2B = (1.0 - Fade) - FSaturation;
 
	float3 iF = F;
 
	F.r = (iF.r * r2R + iF.g * g2R + iF.b * b2R);
	F.g = (iF.r * r2G + iF.g * g2G + iF.b * b2G);
	F.b = (iF.r * r2B + iF.g * g2B + iF.b * b2B);
 
	float N = dot(F.rgb, LumCoeff);
	float3 Cn = F;
 
	if (N < 0.5)
		Cn = (2.0 * N - 1.0) * (F - F * F) + F;
	else
		Cn = (2.0 * N - 1.0) * (sqrt(F) - F) + F;
 
	Cn = pow(max(Cn,0), 1.0 / Linearization);
 
	float3 Fn = lerp(B, Cn, Strenght);
	return Fn;
}

float3 ReinhardToneMapping(in float3 x)
{
	const float W =  ReinhardWhitepoint;	// Linear White Point Value
    	const float K =  ReinhardScale;        // Scale

    	// gamma space or not?
    	return (1 + K * x / (W * W)) * x / (x + K);
}

float3 ReinhardLinearToneMapping(in float3 x)
{
    	const float W = ReinhardLinearWhitepoint;	        // Linear White Point Value
    	const float L = ReinhardLinearPoint;           // Linear point
    	const float C = ReinhardLinearSlope;           // Slope of the linear section
    	const float K = (1 - L * C) / C; // Scale (fixed so that the derivatives of the Reinhard and linear functions are the same at x = L)
    	float3 reinhard = L * C + (1 - L * C) * (1 + K * (x - L) / ((W - L) * (W - L))) * (x - L) / (x - L + K);

    	// gamma space or not?
    	return (x > L) ? reinhard : C * x;
}

float3 HaarmPeterDuikerFilmicToneMapping(in float3 x)
{
    	x = max( (float3)0.0f, x - 0.004f );
    	return pow( abs( ( x * ( 6.2f * x + 0.5f ) ) / ( x * ( 6.2f * x + 1.7f ) + 0.06 ) ), 2.2f );
}

float3 CustomToneMapping(in float3 x)
{
	const float A = 0.665f;
	const float B = 0.09f;
	const float C = 0.004f;
	const float D = 0.445f;
	const float E = 0.26f;
	const float F = 0.025f;
	const float G = 0.16f;//0.145f;
	const float H = 1.1844f;//1.15f;

    // gamma space or not?
	return (((x*(A*x+B)+C)/(x*(D*x+E)+F))-G) / H;
}

float3 ColormodPass( float3 color )
{
	color.xyz = (color.xyz - dot(color.xyz, 0.333)) * ColormodChroma + dot(color.xyz, 0.333);
	color.xyz = saturate(color.xyz);
	color.x = (pow(color.x, ColormodGammaR) - 0.5) * ColormodContrastR + 0.5 + ColormodBrightnessR;
	color.y = (pow(color.y, ColormodGammaG) - 0.5) * ColormodContrastG + 0.5 + ColormodBrightnessB;
	color.z = (pow(color.z, ColormodGammaB) - 0.5) * ColormodContrastB + 0.5 + ColormodBrightnessB;
	return color;	
}

float3 SphericalPass( float3 color )
{
	float3 signedColor = color.rgb * 2.0 - 1.0;
	float3 sphericalColor = sqrt(1.0 - signedColor.rgb * signedColor.rgb);
	sphericalColor = sphericalColor * 0.5 + 0.5;
	sphericalColor *= color.rgb;
	color.rgb += sphericalColor.rgb * sphericalAmount;
	color.rgb *= 0.95;
	return color;
}

float4 LeiFX_Reduct( float4 colorInput, float2 tex )
{

	float2 res;
	res.x = ScreenSize.x;
	res.y = ScreenSize.x*ScreenSize.z;
	float2 what;
	what.x = 1 / ScreenSize.x;
	what.y = 1 / (ScreenSize.x*ScreenSize.z);

	float2 dithet = tex.xy * res.xy;

	dithet.x = tex.x * res.x;
	dithet.y = tex.y * res.y;

	float2 ditheu = tex.xy * res.xy;

	ditheu.x = tex.x * res.x;
	ditheu.y = tex.y * res.y;

	// 2x2 matrix?

	float vertline1 = 	(mod(dithet.x, 		2.0));
	float vertline2 = 	(mod(dithet.x+1, 	2.0));
	float vertline3 = 	(mod(dithet.x+1, 	4.0));
	float vertline4 = 	(mod(dithet.x+1,	4.0));
	float vertline5 = 	(mod(dithet.x-1,	4.0));
	float horzline1 = 	(mod(dithet.y, 		2.0));
	float horzline2 = 	(mod(dithet.y+1,  	2.0));
	float horzline3 = 	(mod(dithet.y,  	4.0));
	float horzline4 = 	(mod(dithet.y+1,  	4.0));
	float horzline5 = 	(mod(dithet.y-1,  	4.0));

	float vertline3a = 	(mod(dithet.x+3, 	4.0));
	float horzline3a = 	(mod(dithet.y+2,  	4.0));


	float dithone 		= vertline1 + horzline2;
	float dithtwo 		= vertline2 + horzline1;
	float diththree 	= vertline3 + horzline3;
	float dithfour 		= vertline4 + horzline5;
	float dithfive 		= vertline3 + horzline3;
	float dithsix 		= vertline3 + horzline3;
	float dithsixy 		= vertline3a + horzline3a;

	float3 ditherX, dithero, ditherv, ditherg, ditherx;

	dithone = dithone * 0.3;
	dithtwo = dithtwo * 0.3 + 1;
	dithone *= dithtwo;

	dithfour = dithfour * 0.3;
	dithfour *= dithfive;


	dithsix *= dithtwo;
	dithsixy *= dithtwo;

	dithfive *= dithtwo;

	dithfour = pow(dithfour, 2.0f);
	

	// Lamest crudest 'dither matrix' ever.

	// The estimated dither pattern

		//      . X . o . X . o . X . o . X
		//      v g x . v g x . v g x . v g
		//      . o . o . o . o . o . o . o
		//      x . v g x . v g x . v g x .
		//      . X . o . X . o . X . o . X
		//	v g v . v g v . v g v . v g 
	
	float3 dithapick;
	float3 XX, oo, vv, xx, gg;


	XX = 0.018f;
	vv = 0.02f;
	xx = 0.015f;
	oo = -0.003f;
	gg = -60.93f;


	ditherX = dithone;
	if (ditherX.b < 1.0f) ditherX.rgb = 0;
	else	ditherX.rgb = XX.rgb;

	ditherx = diththree;
	if (ditherx.r > 1.3f) ditherx.rgb = 0;
	else	ditherx.rgb = xx.rgb;

	ditherv = dithone;
	if (ditherv.b < 0.7f) ditherv.rgb = vv.rgb;
	else	ditherv.rgb = 0;




	dithero = dithsix;
	if (dithero.r > 2.2f) dithero.rgb = 0;
	else	dithero.rgb = -0.018f;

	ditherg = dithsixy;
	if (ditherg.r > 2.2f) ditherg.rgb = 0;
	else	ditherg.rgb = -0.006f;


	dithapick = ditherv;
	dithapick = ditherx + ditherX + ditherv + ditherg + dithero;

	// This is the stupidest set of hacks ever to get just this stupid dither
	// pattern. It obviously could be done better, but eh.......
	// i'm bad at math :(

	// Matrix numbers....
	float3 dithonme;
	float3 dithonyou;

	//dithonyou = dithapick.r + dithapick.g + dithapick.b;
	dithapick.b = dithapick.r;
	dithonme.r = colorInput.r + dithapick.r;
	dithonme.g = colorInput.g + dithapick.g;
	dithonme.b = colorInput.b + dithapick.b;


	float eeee = 0.034f;

	dithonyou.rgb = colorInput.rgb;

	if (dithonyou.r > dithonme.r) dithonme.r = dithonyou.r;
	if (dithonyou.g > dithonme.g) dithonme.g = dithonyou.g;
	if (dithonyou.b > dithonme.b) dithonme.b = dithonyou.b;

	if (dithonyou.r < dithonme.r) dithonyou.r = dithonme.r;
	if (dithonyou.g < dithonme.g) dithonyou.g = dithonme.g;
	if (dithonyou.b < dithonme.b) dithonyou.b = dithonme.b;

	if (colorInput.r > 0) colorInput.r = dithonyou.r;
	if (colorInput.g > 0) colorInput.g = dithonyou.g;
	if (colorInput.b > 0) colorInput.b = dithonyou.b;

	//
	// Reduce to 16-bit color
	//

	float why = 1;
	float3 reduceme = 1;
	float radooct = 32;	// 32 is usually the proper value

	reduceme.r = pow(colorInput.r, why);  
	reduceme.r *= radooct;	
	reduceme.r = int(floor(reduceme.r));	
	reduceme.r /= radooct; 
	reduceme.r = pow(reduceme.r, why);

	reduceme.g = pow(colorInput.g, why);  
	reduceme.g *= radooct * 2;	
	reduceme.g = int(floor(reduceme.g));	
	reduceme.g /= radooct * 2; 
	reduceme.g = pow(reduceme.g, why);

	reduceme.b = pow(colorInput.b, why);  
	reduceme.b *= radooct;	
	reduceme.b = int(floor(reduceme.b));	
	reduceme.b /= radooct; 
	reduceme.b = pow(reduceme.b, why);

	colorInput.rgb = reduceme.rgb;
	
	{
		float leifx_linegamma = 0.005;
		float horzline1 = 	(mod(ditheu.y, 	2.0));
		if (horzline1 < 1)	leifx_linegamma = 0;
	
		colorInput.r += leifx_linegamma;
		colorInput.b += leifx_linegamma;	
	}

	// END REDUCTION

//	colorInput.r *= 1.1;

	return colorInput;
}

#define COP
#define YRI
#define GHT
#define BY
#define MAR
#define TY
#define MC
#define FLY

/*
float4 LeiFX_Filter( float4 colorInput, float2 tex )
{
	// Sample things.
	float3 pixel1 = myTex2D(Peww, tex + float2((pixel.x * 1.0f), 0)).rgb;	// Left  Pixel
	float3 pixel2 = myTex2D(Peww, tex + float2(-pixel.x * 1.0f, 0)).rgb;	// Right Pixel

	// New filter
	{
		float3 pixeldiff;
		float3 pixelmake;		
		float3 pixeldiffleft;

		pixelmake.rgb = 0;
		pixeldiff.rgb = pixel2.rgb- colorInput.rgb;

		pixeldiffleft.rgb = pixel1.rgb - colorInput.rgb;

		if (pixeldiff.r > FILTCAP) 		pixeldiff.r = FILTCAP;
		if (pixeldiff.g > FILTCAPG) 		pixeldiff.g = FILTCAPG;
		if (pixeldiff.b > FILTCAP) 		pixeldiff.b = FILTCAP;

		if (pixeldiff.r < -FILTCAP) 		pixeldiff.r = -FILTCAP;
		if (pixeldiff.g < -FILTCAPG) 		pixeldiff.g = -FILTCAPG;
		if (pixeldiff.b < -FILTCAP) 		pixeldiff.b = -FILTCAP;

		if (pixeldiffleft.r > FILTCAP) 		pixeldiffleft.r = FILTCAP;
		if (pixeldiffleft.g > FILTCAPG) 	pixeldiffleft.g = FILTCAPG;
		if (pixeldiffleft.b > FILTCAP) 		pixeldiffleft.b = FILTCAP;

		if (pixeldiffleft.r < -FILTCAP) 	pixeldiffleft.r = -FILTCAP;
		if (pixeldiffleft.g < -FILTCAPG) 	pixeldiffleft.g = -FILTCAPG;
		if (pixeldiffleft.b < -FILTCAP) 	pixeldiffleft.b = -FILTCAP;

		pixelmake.rgb = (pixeldiff.rgb / 4) + (pixeldiffleft.rgb / 16);
		colorInput.rgb = (colorInput.rgb + pixelmake.rgb);
	}	

  return colorInput;	// and that's it. holy crap, why didn't i do this earlier?
}
*/

float4 LeiFX_Gamma( float4 colorInput, float2 tex )
{
	// moved the '4x1 line' stuff into here
	float2 res;
	res.x = ScreenSize.x;
	res.y = ScreenSize.x*ScreenSize.z;
	float gammaed = 0.15;
	float leifx_linegamma = gammaed;
	float2 dithet = tex.xy * res.xy;
	dithet.y = tex.y * res.y;
	float horzline1 = 	(mod(dithet.y, 	2.0));
	if (horzline1 < 1)	leifx_linegamma = 0;
	float leifx_gamma = 1.3 - gammaed + leifx_linegamma;

	colorInput.rgb = max(colorInput.rgb, 0);
	colorInput.r = pow(colorInput.r, 1.0 / leifx_gamma);
	colorInput.g = pow(colorInput.g, 1.0 / leifx_gamma);
	colorInput.b = pow(colorInput.b, 1.0 / leifx_gamma);

	return colorInput;
}


float4 GaussBlur22(float2 coord, sampler tex, float mult, float lodlevel, int axis) //texcoord, texture, blurmult in pixels, tex2dlod level, axis (0=horiz, 1=vert)
{
	float4 sum = 0;
	float weight[11] = {0.082607, 0.080977, 0.076276, 0.069041, 0.060049, 0.050187, 0.040306, 0.031105, 0.023066, 0.016436, 0.011254};

	for(int i=1; i < 11; i++)
	{
		if(axis == 0)
		{
			sum	+= tex2Dlod(tex, float4(coord.xy + float2(i * BUFFER_RCP_WIDTH * mult,0),0,lodlevel)) * weight[i];
			sum	+= tex2Dlod(tex, float4(coord.xy - float2(i * BUFFER_RCP_WIDTH * mult,0),0,lodlevel)) * weight[i];
		}
		if(axis == 1)
		{
			sum	+= tex2Dlod(tex, float4(coord.xy + float2(0,i * BUFFER_RCP_HEIGHT * mult),0,lodlevel)) * weight[i];
			sum	+= tex2Dlod(tex, float4(coord.xy - float2(0,i * BUFFER_RCP_HEIGHT * mult),0,lodlevel)) * weight[i];
		}
	}

	sum	+= tex2Dlod(tex, float4(coord.xy,0,lodlevel)) * weight[0];
		
	return sum;

}


float3 colorhuefx_prod80( float3 color )
{
	
	float3 fxcolor = saturate( color.xyz );
	float greyVal = dot( fxcolor.xyz, LumCoeff.xyz );
	float3 HueSat = Hue( fxcolor.xyz );
	float colorHue = HueSat.x;
	float colorInt = HueSat.z - HueSat.y * 0.5;
	float colorSat = HueSat.y / ( 1.0 - abs( colorInt * 2.0 - 1.0 ) * 1e-10 );

	//When color intensity not based on original saturation level
   	if ( USE_COLORSAT == 0 )   colorSat = 1.0f;

	float hueMin_1 = hueMid - hueRange;
	float hueMax_1 = hueMid + hueRange;
	float hueMin_2 = 0.0f;
	float hueMax_2 = 0.0f;


   	if ( hueMin_1 < 0.0 )
   	{
   		hueMin_2 = 1.0f + hueMin_1;
   		hueMax_2 = 1.0f + hueMid;
   
      		if ( colorHue >= hueMin_1 && colorHue <= hueMid )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, smootherstep( hueMin_1, hueMid, colorHue ) * ( colorSat * satLimit ));
      		else if ( colorHue >= hueMid && colorHue <= hueMax_1 )
        		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, ( 1.0f - smootherstep( hueMid, hueMax_1, colorHue )) * ( colorSat * satLimit ));
      		else if ( colorHue >= hueMin_2 && colorHue <= hueMax_2 )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, smootherstep( hueMin_2, hueMax_2, colorHue ) * ( colorSat * satLimit ));
      		else
         		fxcolor.xyz = greyVal.xxx;
   	}

   	else if ( hueMax_1 > 1.0 )
   	{
   		hueMin_2 = 0.0f - ( 1.0f - hueMid );
   		hueMax_2 = hueMax_1 - 1.0f;

      		if ( colorHue >= hueMin_1 && colorHue <= hueMid )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, smootherstep( hueMin_1, hueMid, colorHue ) * ( colorSat * satLimit ));
      		else if ( colorHue >= hueMid && colorHue <= hueMax_1 )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, ( 1.0f - smootherstep( hueMid, hueMax_1, colorHue )) * ( colorSat * satLimit ));
      		else if ( colorHue >= hueMin_2 && colorHue <= hueMax_2 )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, ( 1.0f - smootherstep( hueMin_2, hueMax_2, colorHue )) * ( colorSat * satLimit ));
      		else
         		fxcolor.xyz = greyVal.xxx;
   	}	
   
	else
   	{
      		if ( colorHue >= hueMin_1 && colorHue <= hueMid )
        		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, smootherstep( hueMin_1, hueMid, colorHue ) * ( colorSat * satLimit ));
      		else if ( colorHue > hueMid && colorHue <= hueMax_1 )
         		fxcolor.xyz = lerp( greyVal.xxx, fxcolor.xyz, ( 1.0f - smootherstep( hueMid, hueMax_1, colorHue )) * ( colorSat * satLimit ));
      		else
         		fxcolor.xyz = greyVal.xxx;
   	}

   	color.xyz = lerp( color.xyz, fxcolor.xyz, fxcolorMix );

	return color.xyz;

}


static const float zF = 1000;
static const float zN = 0.15;

float linearlizeDepth(float zB)
{
   return zF * zN / (zF + zB * ( zN - zF));
}


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Pixel shaders
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

float4 PS_BloomPrePass(VS_OUTPUT_POST IN) : COLOR
{
	
	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;

	pixelSize.xy *= 2;

	float4 bloom=0.0;
	float2 bloomuv;

	float2 offset[4]=
	{
		float2(1.0, 1.0),
		float2(1.0, 1.0),
		float2(-1.0, 1.0),
		float2(-1.0, -1.0)
	};

	for (int i=0; i<4; i++)
	{
		bloomuv.xy=offset[i]*pixelSize.xy;
		bloomuv.xy=IN.txcoord.xy + bloomuv.xy;
		float4 tempbloom=tex2D(SamplerColorLDR, bloomuv.xy);
		tempbloom.w = max(0,dot(tempbloom.xyz,0.333)-fAnamFlareThreshold);
		tempbloom.xyz = max(0, tempbloom.xyz-fBloomThreshold); 
		bloom+=tempbloom;
	}

	bloom *= 0.25;

	return bloom;
}

float4 PS_BloomPass1(VS_OUTPUT_POST IN) : COLOR
{
	
	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;

	pixelSize.xy *= 4;

	float4 bloom=0.0;
	float2 bloomuv;

	float2 offset[8]=
	{
		float2(1.0, 1.0),
		float2(0.0, -1.0),
		float2(-1.0, 1.0),
		float2(-1.0, -1.0),
		float2(0.0, 1.0),
		float2(0.0, -1.0),
		float2(1.0, 0.0),
		float2(-1.0, 0.0)
	};

	for (int i=0; i<8; i++)
	{
		bloomuv.xy=offset[i]*pixelSize.xy;
		bloomuv.xy=IN.txcoord.xy + bloomuv.xy;
		float4 tempbloom=tex2Dlod(SamplerBloom1, float4(bloomuv.xy,0,0));
		bloom+=tempbloom;
	}

	bloom *= 0.125;
	return bloom;
}

float4 PS_BloomPass2(VS_OUTPUT_POST IN) : COLOR
{
	
	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;

	float4 bloom=0.0;
	float2 bloomuv;

	pixelSize.xy *= 8;

	float2 offset[8]=
	{
		float2(0.707, 0.707),
		float2(0.707, -0.707),
		float2(-0.707, 0.707),
		float2(-0.707, -0.707),
		float2(0.0, 1.0),
		float2(0.0, -1.0),
		float2(1.0, 0.0),
		float2(-1.0, 0.0)
	};

	for (int i=0; i<8; i++)
	{
		bloomuv.xy=offset[i]*pixelSize.xy;
		bloomuv.xy=IN.txcoord.xy + bloomuv.xy;
		float4 tempbloom=tex2Dlod(SamplerBloom2, float4(bloomuv.xy,0,0));
		bloom+=tempbloom;
	}

	bloom *= 0.5; //to brighten up the sample, it will lose brightness in H/V gaussian blur 

	return bloom;
}


float4 PS_BloomPass3(VS_OUTPUT_POST IN) : COLOR
{
	float4 bloom;
	bloom = GaussBlur22(IN.txcoord.xy, SamplerBloom3, 16, 0, 0);
	bloom.a *= fAnamFlareAmount;
	bloom.xyz *= fBloomAmount;
	return bloom;
}

float4 PS_BloomPass4(VS_OUTPUT_POST IN) : COLOR
{
	float4 bloom;
	bloom.xyz = GaussBlur22(IN.txcoord.xy, SamplerBloom4, 16, 0, 1).xyz*2.5;	
	bloom.w   = GaussBlur22(IN.txcoord.xy, SamplerBloom4, 32*fAnamFlareWideness, 0, 0).w*2.5; //to have anamflare texture (bloom.w) avoid vertical blur
	return bloom;
}

	
#if (USE_PETKAGTADOF == 1)
float4 PS_ProcessDoFBokeh(VS_OUTPUT_POST IN, float2 vPos : VPOS) : COLOR 
{
	float depth = linearize(tex2D(SamplerDepth,IN.txcoord.xy).x);
	
	float fDepth = focalDepth;
	
	#if (DOF_AUTO == 1)
		fDepth = linearize(tex2D(SamplerDepth,focus).x);
	#endif
	
	float blur = 2.0;
	#if (DOF_MANUAL == 1)
		float a = depth-fDepth; //focal plane
		float b = (a-fdofstart)/fdofdist; //far DoF
		blur = b;
	#else
		float f = focalLength; //focal length in mm
		float d = fDepth*1000.0; //focal plane in mm
		float o = depth*1000.0; //depth in mm
		
		float a = (o*f)/(o-f); 
		float b = (d*f)/(d-f); 
		float c = (d-f)/(d*fstop*CoC); 
		
		blur = abs(a-b)*c;
	#endif
	blur = saturate(blur);
	float2 noise = rand(IN.txcoord.xy)*namount*blur;
	
	float w = (1.0/ScreenSize.x)*blur*maxblur+noise.x;
	float h = (1.0/ScreenSize.x*ScreenSize.z)*blur*maxblur+noise.y;
	
	float4 col = float4(0,0,0,1);
	
	if(blur < 0.05) //some optimization thingy
	{
		col = tex2D(SamplerColorHDR1, IN.txcoord.xy);
	}
	else
	{
	col = tex2D(SamplerColorHDR1, IN.txcoord.xy);
	float s = 1.0;
	int ringsamples;
	float origdepth = tex2D(SamplerDepth, IN.txcoord.xy).x;

	[loop]
	for (int g = 1; g <= rings; g += 1)
	{
		ringsamples = g * samples;
		[loop]
		for (int j = 0 ; j < ringsamples ; j += 1)
		{
			float step = PI*2.0 / ringsamples;
			float pw = cos(j*step)*g;
			float ph = sin(j*step)*g;
			float p = 1.0;
			float2 samplecoord = IN.txcoord.xy +float2(pw*w,ph*h);

			#if (DOF_PENTAGONSHAPE == 1)
				p = penta(float2(pw,ph));
			#endif

			float sampledepth = tex2Dlod(SamplerDepth, float4(samplecoord,0,0)).x;
			if(sampledepth > origdepth*(1-origdepth*0.05)) 
			{	
				col.xyz += colorDof(samplecoord,blur).xyz*lerp(1.0,g/rings,bias)*p;  
				s += 1.0*lerp(1.0,g/rings,bias)*p;
			}
		}
	}
	col = col/s; //divide by sample count
	}
	
	#if( DOF_VIGNETTING == 1)
		col *= vignette(IN.txcoord.xy,vignint);
	#endif
	
	return col;
}
#endif

#if (USE_MATSODOF==1)

// Fast depth of field pixel shader (Matso code)
float4 PS_ProcessPass_FastDoF1(VS_OUTPUT_POST IN) : COLOR
{
	
	float4 res;
	float2 coord = IN.txcoord.xy;
	float4 tcol = tex2D(SamplerColorHDR1, coord.xy);
	float sd = tex2D(SamplerDepth, coord).x;
	int axis = FIRST_PASS;
	float sf = 0;

#if (USE_AUTOFOCUS == 1)
	sf = tex2D(SamplerDepth, 0.5).x;
#endif

#if ( USE_SMOOTH_DOF == 1)
	sf -= fFocusBias * 2.0;
#else
	sf -= fFocusBias;
#endif

	float outOfFocus = DOF(sd, sf);
		
	float offset[4] = { -1.282, -0.524, 0.524, 1.282 };
	float2 tdirs[4] = { float2(1.0, 0.0), float2(0.0, 1.0), float2(0.707, 0.707), float2(-0.707, 0.707) };
	//float2 taps[4] = { float2(-1.282, 0.524), float2(0.524, -1.282), float2(-1.282, -0.524), float2(0.524, 1.282) };
	float blur = DOF_SCALE * outOfFocus;
#if (USE_BOKEH_DOF==1)
	float wValue = (1.0 + pow(length(tcol.rgb) + 0.1, fBokehCurve)) * (1.0 - fBokehLight);	// special recipe from papa Matso ;)
#else
	float wValue = 1.0;
#endif
	
	tdirs[axis].x *= fvTexelSize.x;
	tdirs[axis].y *= fvTexelSize.y;
	
#if( USE_BOKEH_DOF == 1)
	blur *= 0.25;
#endif
		
	for (int i = 0; i < 4; i++)
	{
		//float2 t = taps[f] * fvTexelSize;
		
		float2 tdir = offset[i] * tdirs[axis] * blur;
		coord.xy = IN.txcoord.xy + tdir.xy;
#if (USE_CHROMA_DOF == 1)
		float4 ct = ChromaticAberrationFocusPass(coord.xy, outOfFocus, SamplerColorHDR1);
#else
		float4 ct = tex2D(SamplerColorHDR1, coord.xy);
#endif

#if (USE_BOKEH_DOF == 0)
		float w = 1.0 + abs(offset[i]);	// weight blur for better effect
#else	
		float ds = tex2D(SamplerDepth, coord.xy).x;
		float offs = DOF(ds, sf);
		
	#if (USE_BOKEH_DOF == 1)	// my own pseudo-bokeh weighting
		float b = GrayScale(ct.rgb) + length(ct.rgb) + 0.1;
		float w = pow(b, fBokehCurve) + abs(offset[i]);
	#endif
#endif
		tcol += ct * w;
		wValue += w;
	}

	tcol /= wValue;

#if (USE_SPLITSCREEN==1)
return (IN.txcoord.x > 0.5) ? tex2D(SamplerColorHDR1, IN.txcoord) : tcol;
#endif
		
	res.xyz = tcol.xyz;



	res.w = 1.0;
	return res;
}

float4 PS_ProcessPass_FastDoF2(VS_OUTPUT_POST IN) : COLOR
{
	
	float4 res;
	float2 coord = IN.txcoord.xy;
	float4 tcol = tex2D(SamplerColorHDR2, coord.xy);
	float sd = tex2D(SamplerDepth, coord).x;
	int axis = SECOND_PASS;
	float sf = 0;

#if (USE_AUTOFOCUS == 1)
	sf = tex2D(SamplerDepth, 0.5).x;
#endif

#if ( USE_SMOOTH_DOF == 1)
	sf -= fFocusBias * 2.0;
#else
	sf -= fFocusBias;
#endif

	float outOfFocus = DOF(sd, sf);
		
	float offset[4] = { -1.282, -0.524, 0.524, 1.282 };
	float2 tdirs[4] = { float2(1.0, 0.0), float2(0.0, 1.0), float2(0.707, 0.707), float2(-0.707, 0.707) };
	//float2 taps[4] = { float2(-1.282, 0.524), float2(0.524, -1.282), float2(-1.282, -0.524), float2(0.524, 1.282) };
	float blur = DOF_SCALE * outOfFocus;
#if (USE_BOKEH_DOF==1)
	float wValue = (1.0 + pow(length(tcol.rgb) + 0.1, fBokehCurve)) * (1.0 - fBokehLight);	// special recipe from papa Matso ;)
#else
	float wValue = 1.0;
#endif
	
	tdirs[axis].x *= fvTexelSize.x;
	tdirs[axis].y *= fvTexelSize.y;
	
#if( USE_BOKEH_DOF == 1)
	blur *= 0.25;
#endif
		
	for (int i = 0; i < 4; i++)
	{
		//float2 t = taps[i] * fvTexelSize;
		
		float2 tdir = offset[i] * tdirs[axis] * blur;
		//float2 tdir = blur * (tdirs[axis] + t);
		coord.xy = IN.txcoord.xy + tdir.xy;
#if (USE_CHROMA_DOF == 1)
		float4 ct = ChromaticAberrationFocusPass(coord.xy, outOfFocus, SamplerColorHDR2);
#else
		float4 ct = tex2D(SamplerColorHDR2, coord.xy);
#endif

#if (USE_BOKEH_DOF == 0)
		float w = 1.0 + abs(offset[i]);	// weight blur for better effect
#else	
		float ds = tex2D(SamplerDepth, coord.xy).x;
		float offs = DOF(ds, sf);
		
	#if (USE_BOKEH_DOF == 1)	// my own pseudo-bokeh weighting
		float b = GrayScale(ct.rgb) + length(ct.rgb) + 0.1;
		float w = pow(b, fBokehCurve) + abs(offset[i]);
	#endif
#endif
		tcol += ct * w;
		wValue += w;
	}

	tcol /= wValue;

#if (USE_SPLITSCREEN==1)
return (IN.txcoord.x > 0.5) ? tex2D(SamplerColorHDR2, IN.txcoord) : tcol;
#endif
		
	res.xyz = tcol.xyz;



	res.w = 1.0;
	return res;
}

float4 PS_ProcessPass_FastDoF3(VS_OUTPUT_POST IN) : COLOR
{
	
	float4 res;
	float2 coord = IN.txcoord.xy;
	float4 tcol = tex2D(SamplerColorHDR1, coord.xy);
	float sd = tex2D(SamplerDepth, coord).x;
	int axis = THIRD_PASS;
	float sf = 0;

#if (USE_AUTOFOCUS == 1)
	sf = tex2D(SamplerDepth, 0.5).x;
#endif

#if ( USE_SMOOTH_DOF == 1)
	sf -= fFocusBias * 2.0;
#else
	sf -= fFocusBias;
#endif

	float outOfFocus = DOF(sd, sf);
		
	float offset[4] = { -1.282, -0.524, 0.524, 1.282 };
	float2 tdirs[4] = { float2(1.0, 0.0), float2(0.0, 1.0), float2(0.707, 0.707), float2(-0.707, 0.707) };
	//float2 taps[4] = { float2(-1.282, 0.524), float2(0.524, -1.282), float2(-1.282, -0.524), float2(0.524, 1.282) };
	float blur = DOF_SCALE * outOfFocus;
#if (USE_BOKEH_DOF==1)
	float wValue = (1.0 + pow(length(tcol.rgb) + 0.1, fBokehCurve)) * (1.0 - fBokehLight);	// special recipe from papa Matso ;)
#else
	float wValue = 1.0;
#endif
	
	tdirs[axis].x *= fvTexelSize.x;
	tdirs[axis].y *= fvTexelSize.y;
	
#if( USE_BOKEH_DOF == 1)
	blur *= 0.25;
#endif
		
	for (int i = 0; i < 4; i++)
	{
		//float2 t = taps[i] * fvTexelSize;
		
		float2 tdir = offset[i] * tdirs[axis] * blur;
		//float2 tdir = blur * (tdirs[axis] + t);
		coord.xy = IN.txcoord.xy + tdir.xy;
#if (USE_CHROMA_DOF == 1)
		float4 ct = ChromaticAberrationFocusPass(coord.xy, outOfFocus, SamplerColorHDR1);
#else
		float4 ct = tex2D(SamplerColorHDR1, coord.xy);
#endif

#if (USE_BOKEH_DOF == 0)
		float w = 1.0 + abs(offset[i]);	// weight blur for better effect
#else	
		float ds = tex2D(SamplerDepth, coord.xy).x;
		float offs = DOF(ds, sf);
		
	#if (USE_BOKEH_DOF == 1)	// my own pseudo-bokeh weighting
		float b = GrayScale(ct.rgb) + length(ct.rgb) + 0.1;
		float w = pow(b, fBokehCurve) + abs(offset[i]);
	#endif
#endif
		tcol += ct * w;
		wValue += w;
	}

	tcol /= wValue;

#if (USE_SPLITSCREEN==1)
return (IN.txcoord.x > 0.5) ? tex2D(SamplerColorHDR1, IN.txcoord) : tcol;
#endif
		
	res.xyz = tcol.xyz;



	res.w = 1.0;
	return res;
}

float4 PS_ProcessPass_FastDoF4(VS_OUTPUT_POST IN) : COLOR
{
	
	float4 res;
	float2 coord = IN.txcoord.xy;
	float4 tcol = tex2D(SamplerColorHDR2, coord.xy);
	float sd = tex2D(SamplerDepth, coord).x;
	int axis = FOURTH_PASS;
	float sf = 0;

#if (USE_AUTOFOCUS == 1)
	sf = tex2D(SamplerDepth, 0.5).x;
#endif

#if ( USE_SMOOTH_DOF == 1)
	sf -= fFocusBias * 2.0;
#else
	sf -= fFocusBias;
#endif

	float outOfFocus = DOF(sd, sf);
		
	float offset[4] = { -1.282, -0.524, 0.524, 1.282 };
	float2 tdirs[4] = { float2(1.0, 0.0), float2(0.0, 1.0), float2(0.707, 0.707), float2(-0.707, 0.707) };
	//float2 taps[4] = { float2(-1.282, 0.524), float2(0.524, -1.282), float2(-1.282, -0.524), float2(0.524, 1.282) };
	float blur = DOF_SCALE * outOfFocus;
#if (USE_BOKEH_DOF==1)
	float wValue = (1.0 + pow(length(tcol.rgb) + 0.1, fBokehCurve)) * (1.0 - fBokehLight);	// special recipe from papa Matso ;)
#else
	float wValue = 1.0;
#endif
	
	tdirs[axis].x *= fvTexelSize.x;
	tdirs[axis].y *= fvTexelSize.y;
	
#if( USE_BOKEH_DOF == 1)
	blur *= 0.25;
#endif
		
	for (int i = 0; i < 4; i++)
	{
		//float2 t = taps[i] * fvTexelSize;
		
		float2 tdir = offset[i] * tdirs[axis] * blur;
		//float2 tdir = blur * (tdirs[axis] + t);
		coord.xy = IN.txcoord.xy + tdir.xy;
#if (USE_CHROMA_DOF == 1)
		float4 ct = ChromaticAberrationFocusPass(coord.xy, outOfFocus, SamplerColorHDR2);
#else
		float4 ct = tex2D(SamplerColorHDR2, coord.xy);
#endif

#if (USE_BOKEH_DOF == 0)
		float w = 1.0 + abs(offset[i]);	// weight blur for better effect
#else	
		float ds = tex2D(SamplerDepth, coord.xy).x;
		float offs = DOF(ds, sf);
		
	#if (USE_BOKEH_DOF == 1)	// my own pseudo-bokeh weighting
		float b = GrayScale(ct.rgb) + length(ct.rgb) + 0.1;
		float w = pow(b, fBokehCurve) + abs(offset[i]);
	#endif
#endif
		tcol += ct * w;
		wValue += w;
	}

	tcol /= wValue;

#if (USE_SPLITSCREEN==1)
return (IN.txcoord.x > 0.5) ? tex2D(SamplerColorHDR2, IN.txcoord) : tcol;
#endif
		
	res.xyz = tcol.xyz;



	res.w = 1.0;
	return res;
}

#endif


#if( USE_GP65CJ042DOF == 1)

float4 PS_GPDOFFocus(VS_OUTPUT_POST IN) : COLOR
{
	float4 res;
	float2 coord=IN.txcoord.xy;

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return tex2D(SamplerColorHDR1, coord.xy);
	#endif

	float2 uvsrc=FocusPoint;

	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;
	
	const float2 offset[4]=
	{
		float2(0.0, 1.0),
		float2(0.0, -1.0),
		float2(1.0, 0.0),
		float2(-1.0, 0.0)
	};

	float resdepth=linearlizeDepth(tex2D(SamplerDepth, uvsrc.xy).x);
	for (int i=0; i<4; i++)
	{
		uvsrc.xy=uvsrc.xy;
		uvsrc.xy+=offset[i] * pixelSize.xy * FocusSampleRange;
		#if (NOT_BLURRING_SKY_MODE==1)
			resdepth+=linearlizeDepth(tex2D(SamplerDepth, uvsrc).x);
		#else
			resdepth+=min(linearlizeDepth(tex2D(SamplerDepth, uvsrc).x), DepthClip);
		#endif
	}
	resdepth*=0.2;

	float scenefocus=resdepth;

	#if (AUTO_FOCUS == 0)
	scenefocus = ManualFocusDepth; //+1 damit es bei 0 nicht 0 ist denn 1 ist das Niedrigste was sein kann ohne bugs
	#endif

	float4 origcolor=tex2D(SamplerColorHDR1, coord.xy);
	float scenedepth=tex2D(SamplerDepth, IN.txcoord.xy).x;
	
	res.xyz=origcolor.xyz;

	float depth=linearlizeDepth(scenedepth);

	float focalPlaneDepth=scenefocus;
	float farBlurDepth=scenefocus*pow(4.0, FarBlurCurve);
	
	
	#if( TILT_SHIFT == 1)
		float shiftAngle=(frac(TiltShiftAngle / 90.0) == 0) ? 0.0 : TiltShiftAngle;
		float depthShift=1.0 + (0.5 - coord.x)*tan(-shiftAngle * 0.017453292);
		focalPlaneDepth*=depthShift;
		farBlurDepth*=depthShift;
	#endif
	
	
	if(depth < focalPlaneDepth)
		res.w=(depth - focalPlaneDepth)/focalPlaneDepth;
	else
	{
		res.w=(depth - focalPlaneDepth)/(farBlurDepth - focalPlaneDepth);
		res.w=saturate(res.w);
	}

	res.w=res.w * 0.5 + 0.5;
	
	#if ( NOT_BLURRING_SKY_MODE == 1)
		#define	DEPTH_OF_FIELD_QULITY 0
		res.w=(depth > 1000.0) ? 0.5 : res.w;
	#endif

	float blurAmount=abs(res.w * 2.0 - 1.0);

	float discRadius=blurAmount * float(DEPTH_OF_FIELD_QULITY) * RadiusSacleMultipiler;
	
	discRadius*=(depth < 0.5) ? (1.0 / max(NearBlurCurve, 1.0)) : 1.0;
	
	float3 distortion=float3(-1.0, 0.0, 1.0);
	distortion*=ChromaticAberrationAmount*discRadius;

	origcolor=tex2D(SamplerColorHDR1, coord.xy + pixelSize.xy*distortion.x);
	origcolor.w=smoothstep(0.0, depth, origcolor.w);
	res.x=lerp(res.x, origcolor.x, origcolor.w);
	
	origcolor=tex2D(SamplerColorHDR1, coord.xy + pixelSize.xy*distortion.z);
	origcolor.w=smoothstep(0.0, depth, origcolor.w);
	res.z=lerp(res.z, origcolor.z, origcolor.w);
	
	return res;
}

float4 PS_GPDOFBokehblur(VS_OUTPUT_POST IN) : COLOR
{
	float4 res;
	
	float2 coord=IN.txcoord.xy;

	float4 origcolor=tex2D(SamplerColorHDR2, coord.xy);
	
	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return origcolor;
	#endif

	float centerDepth=origcolor.w;

	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;
	
	float blurAmount=abs(centerDepth * 2.0 - 1.0);
	float discRadius=blurAmount * float(DEPTH_OF_FIELD_QULITY);
	discRadius*=RadiusSacleMultipiler;
	
	discRadius*=(centerDepth < 0.5) ? (1.0 / max(NearBlurCurve, 1.0)) : 1.0;
	
	res.xyz=origcolor.xyz;
	res.w=dot(res.xyz, 0.3333);
	res.w=max((res.w - BokehBrightnessThreshold) * BokehBrightnessMultipiler, 0.0);
	res.xyz*=1.0 + res.w*blurAmount;
	
	res.w=1.0;
	
	int sampleCycle=0;
	int sampleCycleCounter=0;
	int sampleCounterInCycle=0;
	
	#if ( POLYGONAL_BOKEH == 1)
		float basedAngle=360.0 / POLYGON_NUM;
		float2 currentVertex;
		float2 nextVertex;
	
		int	dofTaps=DEPTH_OF_FIELD_QULITY * (DEPTH_OF_FIELD_QULITY + 1) * POLYGON_NUM / 2.0;
	#else
		int	dofTaps=DEPTH_OF_FIELD_QULITY * (DEPTH_OF_FIELD_QULITY + 1) * 4;
	#endif
		
	
	for(int i=0; i < dofTaps; i++)
	{
		if(sampleCounterInCycle % (sampleCycle+1) == 0   ) 
		{
			sampleCounterInCycle=0;
			sampleCycleCounter++;
		
			#if ( POLYGONAL_BOKEH == 1)
				sampleCycle+=POLYGON_NUM;
				currentVertex.xy=float2(1.0 , 0.0);
				sincos(basedAngle* 0.017453292, nextVertex.y, nextVertex.x);	
			#else	
				sampleCycle+=8;
			#endif
		}
		sampleCounterInCycle++;
		
		#if (POLYGONAL_BOKEH==1)
			float sampleAngle=basedAngle / float(sampleCycleCounter) * sampleCounterInCycle;
			float remainAngle=frac(sampleAngle / basedAngle) * basedAngle;
		
			if(remainAngle == 0)
			{
				currentVertex=nextVertex;
				sincos((sampleAngle +  basedAngle) * 0.017453292, nextVertex.y, nextVertex.x);
			}

			float2 sampleOffset=lerp(currentVertex.xy, nextVertex.xy, remainAngle / basedAngle);
		#else
			float sampleAngle=0.78539816 / float(sampleCycleCounter) * sampleCounterInCycle;
			float2 sampleOffset;
			sincos(sampleAngle, sampleOffset.y, sampleOffset.x);
		#endif
		
		sampleOffset*=sampleCycleCounter / float(DEPTH_OF_FIELD_QULITY);
		float2  coordLow=coord.xy + (pixelSize.xy * sampleOffset.xy * discRadius);
		float4 tap=tex2D(SamplerColorHDR2, coordLow.xy);
		
		float weight=(tap.w >= centerDepth) ? 1.0 : abs(tap.w * 2.0 - 1.0);
		
		float luma=dot(tap.xyz, 0.3333);
		float brightMultipiler=max((luma - BokehBrightnessThreshold) * BokehBrightnessMultipiler, 0.0);
		tap.xyz*=1.0 + brightMultipiler*abs(tap.w*2.0 - 1.0);
		
		weight*=1.0 + BokehBias * pow(float(sampleCycleCounter)/float(DEPTH_OF_FIELD_QULITY), BokehBiasCurve);
		
		
	    res.xyz+=tap.xyz * weight;
	    res.w+=weight;
	}

	res.xyz /= res.w;
		
	res.w=centerDepth;


	return res;
}


float4 PS_GPDOFGaussianH(VS_OUTPUT_POST IN) : COLOR
{
	float2 coord=IN.txcoord.xy;
	
	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;
	
	float4 origcolor=tex2D(SamplerColorHDR1, coord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return origcolor;
	#endif

	float depth=origcolor.w;
	float blurAmount=abs(depth*2.0 - 1.0);
	
	#if (DEPTH_OF_FIELD_QULITY > 0)
		blurAmount*=(depth < 0.5) ? (1.0 / max(NearBlurCurve, 1.0)) : 1.0;
		blurAmount=smoothstep(0.15, 1.0, blurAmount);
	#endif

	blurAmount *=  BokehPostBlur;
	
	float weight[5] = {0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 
		0.0162162162};
	
	float4 res=origcolor * weight[0];
	
	for(int i=1; i < 5; i++)
	{
		res+=tex2D(SamplerColorHDR1, coord.xy + float2(i*pixelSize.x*blurAmount, 0)) * weight[i];
		res+=tex2D(SamplerColorHDR1, coord.xy - float2(i*pixelSize.x*blurAmount, 0)) * weight[i];
	}
	
	
	res.w=depth;
	
	return res;
}

float4 PS_GPDOFGaussianV(VS_OUTPUT_POST IN) : COLOR
{
	float2 coord=IN.txcoord.xy;

	float2 pixelSize=ScreenSize.y;
	pixelSize.y*=ScreenSize.z;
	
	
	float4 origcolor=tex2D(SamplerColorHDR2, coord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return origcolor;
	#endif

	float depth=origcolor.w;
	float blurAmount=abs(depth*2.0 - 1.0);
	
	#if (DEPTH_OF_FIELD_QULITY > 0)
		blurAmount*=(depth < 0.5) ? (1.0 / max(NearBlurCurve, 1.0)) : 1.0;
		blurAmount=smoothstep(0.15, 1.0, blurAmount);
	#endif

	blurAmount *=  BokehPostBlur;
	
	float weight[5] = {0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 
		0.0162162162};
	float4 res=origcolor * weight[0];

	for(int i=1; i < 5; i++)
	{
		res+=tex2D(SamplerColorHDR2, coord.xy + float2(0, i*pixelSize.y*blurAmount)) * weight[i];
		res+=tex2D(SamplerColorHDR2, coord.xy - float2(0, i*pixelSize.y*blurAmount)) * weight[i];
	}
	
	res.w=depth;
	
	return res;
}

#endif


float4 PS_Colors(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);

	float4 color 		= tex2D(SamplerColorHDR1, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	#if (USE_CARTOON == 1)
	color.xyz = CartoonPass(color.xyz, IN.txcoord.xy, pixelsize.xy);
	#endif

	//colors

	#if (USE_LUT == 1)
	color.x = tex2D(SamplerLut, float2(color.x, 1.0)).x;
	color.y = tex2D(SamplerLut, float2(color.y, 1.0)).y;
	color.z = tex2D(SamplerLut, float2(color.z, 1.0)).z;
	#endif

	#if (USE_LEVELS== 1)
	color.xyz = LevelsPass(color.xyz);
	#endif

	#if (USE_TECHNICOLOR == 1)
	color.xyz = TechniPass_prod80(color.xyz);
	#endif

	#if (USE_SWFX_TECHNICOLOR == 1)
	color.xyz = TechnicolorPass(color.xyz);
	#endif

	#if (USE_DPX == 1)
	color.xyz = DPXPass(color.xyz);
	#endif

	#if (USE_MONOCHROME == 1)
	color.xyz = dot(color.xyz, 0.333);
	#endif

	#if (USE_LIFTGAMMAGAIN == 1)
	color.xyz = LiftGammaGainPass(color.xyz);
	#endif
	
	#if (USE_TONEMAP == 1)
	color.xyz = TonemapPass(color.xyz);
	#endif
	
	#if (USE_VIBRANCE == 1)
	color.xyz = VibrancePass(color.xyz);
	#endif
	
	#if (USE_CURVES == 1)
	color.xyz = CurvesPass(color.xyz);
	#endif

	#if (USE_SEPIA == 1)
	color.xyz = SepiaPass(color.xyz);
	#endif

	#if (USE_SKYRIMTONEMAP == 1)
	color.xyz = SkyrimTonemapPass(color.xyz);
	#endif

	#if (USE_COLORMOOD == 1)
	color.xyz = MoodPass(color.xyz);
	#endif
 
	#if (USE_CROSSPROCESS == 1)
	color.xyz = CrossPass(color.xyz);
	#endif
	
	#if (USE_FILMICPASS == 1)
	color.xyz = FilmPass(color.xyz);
	#endif

	#if (USE_REINHARDLINEAR == 1)
	color.xyz = ReinhardLinearToneMapping(color.xyz);
	#endif

	#if (USE_REINHARD == 1)
	color.xyz = ReinhardToneMapping(color.xyz);
	#endif

	#if (USE_HPD == 1)
	color.xyz = HaarmPeterDuikerFilmicToneMapping(color.xyz);
	#endif
	
	#if (USE_FILMICCURVE == 1)
	color.xyz = CustomToneMapping(color.xyz);
	#endif

	#if (USE_COLORMOD == 1)
	color.xyz = ColormodPass(color.xyz);
	#endif

	#if (USE_SPHERICALTONEMAP == 1)
	color.xyz = SphericalPass(color.xyz);
	#endif
		
	#if (USE_LEIFX == 1)
	color = LeiFX_Reduct(color, IN.txcoord.xy);
	#endif

	return color;

}

float4 PS_Distort(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);

	float4 color 		= tex2D(SamplerColorHDR2, IN.txcoord.xy);
	float depth		= tex2D(SamplerDepth, IN.txcoord.xy).x;

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	float4 coord=0.0;
	coord.xy=IN.txcoord.xy;
	coord.w=0.0;  
	float3 eta = float3(1.0+ChromaticAmount*0.9,1.0+ChromaticAmount*0.6,1.0+ChromaticAmount*0.3);
	float2 center;
	center.x = coord.x-0.5;
	center.y = coord.y-0.5;
	float LensZoom = 1.0/LensSize;

	float r2 = (IN.txcoord.x-0.5) * (IN.txcoord.x-0.5) + (IN.txcoord.y-0.5) * (IN.txcoord.y-0.5);     
	float f = 0;

	if( LensDistortionCubic == 0.0){
		f = 1 + r2 * LensDistortion;
	}else{
                f = 1 + r2 * (LensDistortion + LensDistortionCubic * sqrt(r2));
	};

	float x = f*LensZoom*(coord.x-0.5)+0.5;
	float y = f*LensZoom*(coord.y-0.5)+0.5;
	float2 rCoords = (f*eta.r)*LensZoom*(center.xy*0.5)+0.5;
	float2 gCoords = (f*eta.g)*LensZoom*(center.xy*0.5)+0.5;
	float2 bCoords = (f*eta.b)*LensZoom*(center.xy*0.5)+0.5;
	
	float4 inputDistord = float4(tex2D(SamplerColorHDR2,rCoords).r , tex2D(SamplerColorHDR2,gCoords).g ,tex2D(SamplerColorHDR2,bCoords).b, tex2D(SamplerColorHDR2,float2(x,y)).a);

	float4 schmotzcolor = float4(inputDistord.r,inputDistord.g,inputDistord.b,1);

	color.xyz = schmotzcolor.xyz;
 
	return color;

}


float4 PS_Lighting(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);

	float4 color 		= tex2D(SamplerColorHDR2, IN.txcoord.xy);
	float depth		= tex2D(SamplerDepth, IN.txcoord.xy).x;

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	#if( USE_GODRAYS == 1)
	float2 ScreenLightPos = float2(0.5, 0.5);
	float2 texCoord = IN.txcoord.xy;
	float2 deltaTexCoord = (texCoord.xy - ScreenLightPos.xy);
	deltaTexCoord *= 1.0 / (float)GodraySamples * GodrayDensity;


	float illuminationDecay = 1.0;

	for(int g = 0; g < GodraySamples; g++) {
	
		texCoord -= deltaTexCoord;;
		float4 sample2 = tex2D(SamplerColorHDR2, texCoord.xy);
		float sampledepth = tex2D(SamplerDepth, texCoord.xy).x;
		sample2.w = saturate(dot(sample2.xyz, 0.3333) - GodrayThreshold);
		sample2.r *= 1.0;
		sample2.g *= 0.95;
		sample2.b *= 0.85;
		sample2 *= illuminationDecay * GodrayWeight;
		#if (GODRAYDEPTHCHECK == 1)
		if(sampledepth>0.97) color.xyz += sample2.xyz*sample2.w;
		#else
		color += sample2;
		#endif
		illuminationDecay *= GodrayDecay;
	}
	#endif

	#if (USE_LENZFLARE == 1)

	float3 lfoffset[19]={
		float3(0.9, 0.01, 4),
		float3(0.7, 0.25, 25),
		float3(0.3, 0.25, 15),
		float3(1, 1.0, 5),
		float3(-0.15, 20, 1),
		float3(-0.3, 20, 1),
		float3(6, 6, 6),
		float3(7, 7, 7),
		float3(8, 8, 8),
		float3(9, 9, 9),
		float3(0.24, 1, 10),
		float3(0.32, 1, 10),
		float3(0.4, 1, 10),
		float3(0.5, -0.5, 2),
		float3(2, 2, -5),
		float3(-5, 0.2, 0.2),
		float3(20, 0.5, 0),
		float3(0.4, 1, 10),
		float3(0.00001, 10, 20)
	};

	float3 lffactors[19]={
		float3(1.5, 1.5, 0),
		float3(0, 1.5, 0),
		float3(0, 0, 1.5),
		float3(0.2, 0.25, 0),
		float3(0.15, 0, 0),
		float3(0, 0, 0.15),
		float3(1.4, 0, 0),
		float3(1, 1, 0),
		float3(0, 1, 0),
		float3(0, 0, 1.4),
		float3(1, 0.3, 0),
		float3(1, 1, 0),
		float3(0, 2, 4),
		float3(0.2, 0.1, 0),
		float3(0, 0, 1),
		float3(1, 1, 0),
		float3(1, 1, 0),
		float3(0, 0, 0.2),
 	       	float3(0.012,0.313,0.588)
	};

	float3 lenstemp = 0;

	float2 lfcoord = float2(0,0);
	float2 distfact=(IN.txcoord.xy-0.5);
	distfact.x *= ScreenSize.z;

	for (int i=0; i<19; i++)
	{
		lfcoord.xy=lfoffset[i].x*distfact;
		lfcoord.xy*=pow(2.0*length(float2(distfact.x,distfact.y)), lfoffset[i].y*3.5);
		lfcoord.xy*=lfoffset[i].z;
		lfcoord.xy=0.5-lfcoord.xy;
		float2 tempfact = (lfcoord.xy-0.5)*2;
		float templensmult = clamp(1.0-dot(tempfact,tempfact),0,1);
		float3 lenstemp1 = dot(tex2D(SamplerColorHDR2, lfcoord.xy).xyz,0.333);

		#if (LENZDEPTHCHECK == 1)
		float templensdepth = tex2D(SamplerDepth, lfcoord.xy).x;
		if(templensdepth < 0.97) lenstemp1 = 0;
		#endif	
	
		lenstemp1 = max(0,lenstemp1.xyz - LenzThreshold);
		lenstemp1 *= lffactors[i].xyz*templensmult;

		lenstemp += lenstemp1;
	}

	color.xyz += lenstemp.xyz*LenzIntensity;

	#endif


	#if(USE_ANAMFLARE == 1)

	float3 anamFlare = AnamorphicSample(0, IN.txcoord.xy, fFlareBlur) * fFlareTint;
	float gaussweight[5] = {0.2270270270, 0.1945945946, 0.1216216216, 0.0540540541, 0.0162162162};

	for(int z=0; z < 5; z++)
	{
		anamFlare+=AnamorphicSample(0, IN.txcoord.xy + float2(0, z * pixelsize.y), fFlareBlur) * fFlareTint* gaussweight[z];
		anamFlare+=AnamorphicSample(0, IN.txcoord.xy - float2(0, z * pixelsize.y), fFlareBlur) * fFlareTint* gaussweight[z];
	}


	color.xyz += anamFlare * fFlareIntensity;

	#endif

	#if (USE_BLOOM == 1)
	float3 colorbloom=0;

	//colorbloom.xyz += tex2D(SamplerBloom1, IN.txcoord.xy).xyz*1.0;
	//colorbloom.xyz += tex2D(SamplerBloom2, IN.txcoord.xy).xyz*2.0;
	colorbloom.xyz += tex2D(SamplerBloom3, IN.txcoord.xy).xyz*1.0;
	colorbloom.xyz += tex2D(SamplerBloom5, IN.txcoord.xy).xyz*9.0;
	colorbloom.xyz *= 0.1;

	colorbloom.xyz = saturate(colorbloom.xyz);
	float colorbloomgray = dot(colorbloom.xyz, 0.333);
	colorbloom.xyz = lerp(colorbloomgray, colorbloom.xyz, fBloomSaturation);
	colorbloom.xyz *= fBloomTint;
	float colorgray = dot(color.xyz, 0.333);

	if(BLOOM_MIXMODE == 1) color.xyz = color.xyz + colorbloom.xyz;
	if(BLOOM_MIXMODE == 2) color.xyz = 1-(1-color.xyz)*(1-colorbloom.xyz);
	if(BLOOM_MIXMODE == 3) color.xyz = max(0.0f,max(color.xyz,lerp(color.xyz,(1.0f - (1.0f - saturate(colorbloom.xyz)) *(1.0f - saturate(colorbloom.xyz * 1.0))),1.0)));
	if(BLOOM_MIXMODE == 4) color.xyz = max(color.xyz, colorbloom.xyz);
	#endif

	#if(USE_GAUSSIAN_ANAMFLARE == 1)
	float3 anamflare = tex2D(SamplerBloom5, IN.txcoord.xy).w*2*fAnamFlareColor;
	anamflare.xyz = max(anamflare.xyz,0);
	color.xyz += pow(anamflare.xyz,1/fAnamFlareCurve);
	#endif

	#if(USE_LENSDIRT == 1)
	float lensdirtmult = dot(tex2D(SamplerBloom5, IN.txcoord.xy).xyz,0.333);
	float3 dirttex = tex2D(SamplerDirt, IN.txcoord.xy).xyz;
	float3 lensdirt = dirttex.xyz*lensdirtmult*fLensdirtIntensity;
	color.xyz += lensdirt.xyz;
	#endif

	return color;

}

float4 PS_Image(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);

	float4 color 		= tex2D(SamplerColorHDR1, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	#if (USE_SHARPENING == 1)
	color.xyz = SharpPass(color.xyz, IN.txcoord.xy, pixelsize.xy);
	#endif

//color.xyz = abs(frac(Timer.x*0.9999)-0.5);
	
	#if(USE_GRAIN == 1)


	float GrainTimerSeed = abs(frac(Timer.x*(1.0-fGrainMotion))-0.5);


	float2 GrainTexCoordSeed = cos(IN.txcoord.y*1.235229)+tan(IN.txcoord.x/1.97) * 0.1;
	float2 GrainSeed1 = GrainTexCoordSeed + float2( 0.0, GrainTimerSeed );
	float2 GrainSeed2 = GrainTexCoordSeed + float2( GrainTimerSeed, 0.0 );
	float2 GrainSeed3 = GrainTexCoordSeed + float2( GrainTimerSeed, GrainTimerSeed );
	float GrainNoise1 = random( GrainSeed1 );
	float GrainNoise2 = random( GrainSeed2 );
	float GrainNoise3 = random( GrainSeed3 );
	float GrainNoise4 = ( GrainNoise1 + GrainNoise2 + GrainNoise3 ) * 0.333333333;
	float3 GrainNoise = float3( GrainNoise4, GrainNoise4, GrainNoise4 );
	float3 GrainColor = float3( GrainNoise1, GrainNoise2, GrainNoise3 );

	float ColorLuma = dot(color.xyz, 0.333);

	float GrainIntensityMult = GrainIntensityMid;

	if(ColorLuma > 0.6) GrainIntensityMult = lerp(GrainIntensityMid, GrainIntensityBright, saturate((ColorLuma - 0.6) * 5 )); 
	if(ColorLuma < 0.4) GrainIntensityMult = lerp(GrainIntensityDark, GrainIntensityMid, saturate(ColorLuma * 2.5));

	color.rgb += GrainIntensityMult * (( lerp( GrainNoise, GrainColor, fGrainSaturation ) * fGrainIntensity ) - ( fGrainIntensity * 0.5));

	#endif

	return color;

}


float4 PS_Overlay(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);

	float4 color 		= tex2D(SamplerColorHDR2, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	#if (USE_LEIFX == 1)
	color = LeiFX_Gamma(color,IN.txcoord.xy); 
	#endif

	#if (USE_EXPLOSION == 1)
	color.xyz = ExplosionPass(color.xyz, IN.txcoord.xy, pixelsize.xy);
	#endif

	#if (USE_SINCITY == 1)
	float sinlumi = dot(color.rgb, float3(0.30f,0.59f,0.11f));
	if(color.r > (color.g + 0.2f) && color.r > (color.b + 0.025f))
	{
		color.rgb = float3(sinlumi, 0, 0)*1.5;
	}
	else
	{
		color.rgb = sinlumi;
	}
	#endif

	#if (USE_COLORHUEFX == 1)
	color.xyz = colorhuefx_prod80(color.xyz);
	#endif

	#if (USE_BORISVIGNETTE==1)
        float2	uv=(IN.txcoord-0.5)*EVignetteRadius;
	float	vignetteold=saturate(dot(uv.xy, uv.xy));
	vignetteold=pow(vignetteold, EVignetteCurve);
	#if (VIGNCOLORING==1)
	float3	EVignetteColor=float3(VIGNREDAMOUNT, VIGNGREENAMOUNT, VIGNBLUEAMOUNT);
	#else
	float3	EVignetteColor=float3(0.0, 0.0, 0.0);
	#endif
	color.xyz=lerp(color.xyz, EVignetteColor, vignetteold*EVignetteAmount);
	#endif	

	#if (USE_HD6_VIGNETTE==1)
	float rovigpwr = CircularPower; //for a circular vignette
	float2 sqvigpwr = float2( SquareTop, SquareBottom ); // for the top and bottom of the screen
	float vsatstrength = ColorDistortion; // color distortion
	float vignettepow = ContrastSharpen; // increases the contrast and sharpness
	float vstrengthatnight = VignetteBorder;
 
 	float2 inTex = IN.txcoord;
 	float vhnd = 0.5;
 	float4 voriginal = color;
 	float4 vcolor = voriginal;
 	vcolor.xyz=1;
 	inTex -= 0.5; // center
 	inTex.y += 0.01; // offset from the center
 	float vignette = saturate(1.0 - dot( inTex, inTex ));
 	vcolor *= pow( vignette, vignettepow );
 
 	float4 rvigtex = vcolor;
 	rvigtex.xyz = pow( vcolor.xyz, 1 );
 	rvigtex.xyz = lerp(float3(0.5, 0.5, 0.5), rvigtex.xyz, 2.25); // contrast
 	rvigtex.xyz = lerp(float3(1,1,1),rvigtex.xyz,rovigpwr); // strength of the circular vinetty
 
	//darken the top and bottom
 	float4 vigtex = vcolor;
 	vcolor.xyz = float3(1,1,1);

	#if (LEFTANDRIGHT==1)
 	float3 topv = min((inTex.x+0.5)*2,1.5) * 2; // top
 	float3 botv = min(((0-inTex.x)+0.5)*2,1.5) * 2; // botton
	topv= lerp(float3(1,1,1), topv, sqvigpwr.x);
 	botv= lerp(float3(1,1,1), botv, sqvigpwr.y);
	vigtex.xyz = (topv)*(botv);
	#endif
	#if (TOPANDBOTTOM==1)
        float3 topv = min((inTex.y+0.5)*2,1.5) * 2; // top
 	float3 botv = min(((0-inTex.y)+0.5)*2,1.5) * 2; // botton
	topv= lerp(float3(1,1,1), topv, sqvigpwr.x);
 	botv= lerp(float3(1,1,1), botv, sqvigpwr.y);
	vigtex.xyz = (topv)*(botv);
	#endif
	#if (CORNERDARKEN==1)
	float3 rightv = min((inTex.x+0.5)*2,1.5) * 2;
 	float3 leftv = min(((0-inTex.x)+0.5)*2,1.5) * 2; 
        float3 topv = min((inTex.y+0.5)*2,1.5) * 2; 
 	float3 botv = min(((0-inTex.y)+0.5)*2,1.5) * 2; 
 	rightv= lerp(float3(1,1,1), rightv, sqvigpwr.y);
 	leftv= lerp(float3(1,1,1), leftv, sqvigpwr.x);
        topv= lerp(float3(1,1,1), topv, sqvigpwr.x);
 	botv= lerp(float3(1,1,1), botv, sqvigpwr.y);
 	vigtex.xyz = (topv)*(botv)*(rightv)*(leftv);
	#endif
 	
	// mix the two types of vignettes
 	vigtex.xyz*=rvigtex.xyz;
	vigtex.xyz = lerp(vigtex.xyz,float3(1,1,1),(vhnd-vstrengthatnight*vhnd)); //for a dark screen
 	vigtex.xyz = min(vigtex.xyz,1);
 	vigtex.xyz = max(vigtex.xyz,0);
 	float3 vtintensity = dot(voriginal.xyz, float3(0.2125, 0.7154, 0.0721));
 	color.xyz = lerp(vtintensity, voriginal.xyz, ((((1-(vigtex.xyz*2))+2)-1)*vsatstrength)+1 );
  	color.xyz *= (vigtex.xyz);
	#endif

	#if (USE_BORDER==1)
	float2 distancefromcenter = abs(IN.txcoord.xy - 0.5);
	bool2 screen_border = step(0.5 - pixelsize,distancefromcenter);
	color.xyz = (!dot(screen_border, 1.0)) ? color.xyz : 0.0;
	#endif

	#if (USE_MOVIEBARS == 1)
	color.xyz = IN.txcoord.y > 0.12 && IN.txcoord.y < 0.88 ? color.xyz : 0.0;
	#endif

	#if(USE_DEPTHBUFFER_OUTPUT == 1)
	color.xyz = pow(saturate(tex2D(SamplerDepth, IN.txcoord.xy).x),50);
	#endif

	return color;

}

float2 aorand(in float2 coord) //generating noise/pattern texture for dithering
{
	float noiseX = ((frac(1.0-coord.x*(BUFFER_WIDTH/2.0))*0.25)+(frac(coord.y*(BUFFER_HEIGHT/2.0))*0.75))*2.0-1.0;
	float noiseY = ((frac(1.0-coord.x*(BUFFER_WIDTH/2.0))*0.75)+(frac(coord.y*(BUFFER_HEIGHT/2.0))*0.25))*2.0-1.0;
	return float2(noiseX,noiseY)*0.01;
}


float4 PS_SSAOGen(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);
	float4 color 		= tex2D(SamplerColorHDR1, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	if(tex2D(SamplerDepth, IN.txcoord.xy).x > 0.999) return float4(color.xyz, 0.5);

	float offsetScale = SSAO_Range/10000;
	float fSSAODepthClip = 10000000.0;
	float fSSAONoiseAmp = 2.0;

	float GTS = abs(frac(Timer.x)-0.5);
	float2 GTCS = cos(IN.txcoord.y)+tan(IN.txcoord.x) * 0.1;
	float2 GS1 = GTCS + float2( 0.0, GTS );
	float2 GS2 = GTCS + float2( GTS, 0.0 );
	float2 GS3 = GTCS + float2( GTS, GTS );
	float GN1 = random( GS1 );
	float GN2 = random( GS2 );
	float GN3 = random( GS3 );
	float GN4 = ( GN1 + GN2 + GN3 ) * 0.333333333;
	float3 GN = float3( GN4, GN4, GN4 );
	float2 Randomized = float2( lerp(GN1,GN3,0.5), lerp(GN2,GN3,0.5));


	float2 randfromTC = aorand(IN.txcoord.xy);
	float2 rotationTC = ((IN.txcoord.xy + Randomized*3) * randfromTC) / 4.0f;
	float3 vRotation = tex2Dlod(SamplerNoise, float4(rotationTC, 0, 0)).rgb - 0.5f;
	
	float3x3 matRotate;

	float hao = 1.0f / (1.0f + vRotation.z);

	matRotate._m00 =  hao * vRotation.y * vRotation.y + vRotation.z;
	matRotate._m01 = -hao * vRotation.y * vRotation.x;
	matRotate._m02 = -vRotation.x;
	matRotate._m10 = -hao * vRotation.y * vRotation.x;
	matRotate._m11 =  hao * vRotation.x * vRotation.x + vRotation.z;
	matRotate._m12 = -vRotation.y;
	matRotate._m20 =  vRotation.x;
	matRotate._m21 =  vRotation.y;
	matRotate._m22 =  vRotation.z;

	float fSceneDepthP = linearlizeDepth(tex2Dlod(SamplerDepth, float4(IN.txcoord.xy,0,0)).x);
	float fOffsetScaleStep = 1.0f + 2.4f / SSAO_Samples;
	float fAccessibility = 0;

	[loop]
	for (int i = 0 ; i < (SSAO_Samples / 8) ; i++)
	for (int x = -1 ; x <= 1 ; x += 2)
	for (int y = -1 ; y <= 1 ; y += 2)
	for (int z = -1 ; z <= 1 ; z += 2) {
		//Create offset vector
		float3 vOffset = normalize(float3(x, y, z)) * (offsetScale *= fOffsetScaleStep);
		//Rotate the offset vector
		float3 vRotatedOffset = mul(vOffset, matRotate);

		//Center pixel's coordinates in screen space
		float3 vSamplePos = float3(IN.txcoord.xy, fSceneDepthP);
 
		//Offset sample point
		vSamplePos += float3(vRotatedOffset.xy, vRotatedOffset.z * fSceneDepthP);
	 
		//Read sample point depth
		float fSceneDepthS = linearlizeDepth(tex2Dlod(SamplerDepth, float4(vSamplePos.xy,0,0)).x);
		//Discard if depth equals max
		if (fSceneDepthS >= fSSAODepthClip)
			fAccessibility += 1.0f;
		else {
			//Compute accessibility factor
			float fDepthDist = fSceneDepthP - fSceneDepthS;
			float fRangeIsInvalid = saturate(fDepthDist);
			if(abs(fDepthDist)<SSAO_SampleRangeClipMin) fRangeIsInvalid = 1.0;
			if(abs(fDepthDist)>SSAO_SampleRangeClipMax) fRangeIsInvalid = 1.0;
			fAccessibility += lerp(fSceneDepthS > vSamplePos.z, 0.5f, fRangeIsInvalid);
		}
	}
 
	//Compute average accessibility
	fAccessibility = fAccessibility / SSAO_Samples;

	//if(abs(fAccessibility-0.5) < 0.04 ) fAccessibility = 0.5;

	color.w = fAccessibility;

	return color;

}


float4 PS_SSAOBlurH(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);
	float4 color 		= tex2D(SamplerColorHDR2, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	float weight[11] = {0.082607, 0.080977, 0.076276, 0.069041, 0.060049, 0.050187, 0.040306, 0.031105, 0.023066, 0.016436, 0.011254};

	color.a *= weight[0];
	
	for(int i=1; i < 11; i++)
	{
		color.a	+= tex2D(SamplerColorHDR2, IN.txcoord.xy + float2(0, i * pixelsize.x * SSAO_Smoothening)).a * weight[i];
		color.a	+= tex2D(SamplerColorHDR2, IN.txcoord.xy - float2(0, i * pixelsize.x * SSAO_Smoothening)).a * weight[i];
	}

	return color;

}

float4 PS_SSAOBlurV(VS_OUTPUT_POST IN) : COLOR
{

	//global variables
	float2 pixelsize 	= float2(ScreenSize.y,ScreenSize.y*ScreenSize.z);
	float4 color 		= tex2D(SamplerColorHDR1, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	float weight[11] = {0.082607, 0.080977, 0.076276, 0.069041, 0.060049, 0.050187, 0.040306, 0.031105, 0.023066, 0.016436, 0.011254};

	color.a *= weight[0];
	
	for(int i=1; i < 11; i++)
	{
		color.a	+= tex2D(SamplerColorHDR1, IN.txcoord.xy + float2(i * pixelsize.y * SSAO_Smoothening, 0)).a * weight[i];
		color.a	+= tex2D(SamplerColorHDR1, IN.txcoord.xy - float2(i * pixelsize.y * SSAO_Smoothening, 0)).a * weight[i];
	}

	float AOresult = color.a;

	AOresult -= 0.5;
	if(AOresult < 0) AOresult *= SSAO_DarkeningAmount;
	if(AOresult > 0) AOresult *= SSAO_BrighteningAmount;
	AOresult = 2.0*saturate(AOresult+0.5);

	#if(SSAO_Debug == 0)
	color.xyz *= AOresult;
	#else
	color.xyz = AOresult*0.5;
	#endif

	color.a = 1.0;

	return color;

}

float4 PS_TiltShiftCoC(VS_OUTPUT_POST IN) : COLOR
{
	float4 color;
	color = tex2D(SamplerColorHDR1, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return color;
	#endif

	float2 orthogonal = float2(tan(TiltShiftAxis * 0.0174533), -ScreenSize.w);
	float2 samplepos = orthogonal * TiltShiftOffset * ScreenSize.z;
	float TS_Dist = abs(dot(IN.txcoord.xy + samplepos, orthogonal) / length(orthogonal));
	float TS_BlurAmount = pow(saturate(TS_Dist), TiltShiftCurve);
	color.a = TS_BlurAmount;
	return color;
}

float4 PS_TiltShiftH(VS_OUTPUT_POST IN) : COLOR
{
	float4 res = tex2D(SamplerColorHDR2, IN.txcoord.xy);

	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return res;
	#endif

	float4 color = GaussBlur22(IN.txcoord.xy, SamplerColorHDR2, res.a*TiltShiftMult, 0, 0);
	return color;
}

float4 PS_TiltShiftV(VS_OUTPUT_POST IN) : COLOR
{
	float4 res = tex2D(SamplerColorHDR1, IN.txcoord.xy);
	
	#if (USE_SPLITSCREEN == 1)
	if(IN.txcoord.x > 0.5) return res;
	#endif

	float4 color = GaussBlur22(IN.txcoord.xy, SamplerColorHDR1, res.a*TiltShiftMult, 0, 1);
	return color;
}


float4 PS_EmptyPassInit(VS_OUTPUT_POST IN) : COLOR
{
	return tex2D(SamplerColorLDR, IN.txcoord.xy);
}

float4 PS_EmptyPassHDR1(VS_OUTPUT_POST IN) : COLOR	//braucht tex2 als input
{
	return tex2D(SamplerColorHDR2, IN.txcoord.xy);
}

float4 PS_EmptyPassHDR2(VS_OUTPUT_POST IN) : COLOR	//braucht tex1 als input
{
	return tex2D(SamplerColorHDR1, IN.txcoord.xy);
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Techniques
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


technique MasterEffect < bool enabled = true; >
{
	#if (USE_BLOOM == 1 || USE_GAUSSIAN_ANAMFLARE == 1 || USE_LENSDIRT == 1)
	pass BloomPrePass
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_BloomPrePass;
		RenderTarget = texBloom1;
	}
	
	pass BloomPass1
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_BloomPass1;
		RenderTarget = texBloom2;
	}

	pass BloomPass2
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_BloomPass2;
		RenderTarget = texBloom3;
	}

	pass BloomPass3
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_BloomPass3;
		RenderTarget = texBloom4;
	}

	pass BloomPass4
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_BloomPass4;
		RenderTarget = texBloom5;
	}
	#endif

	pass MasterEffectInitHDR
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_EmptyPassInit; 
		RenderTarget = texColorHDR1;
	}

	#if (USE_SSAO == 1)
	pass SSAOGen
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_SSAOGen; //tex2
		RenderTarget = texColorHDR2;
	}

	pass SSAOBlurH
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_SSAOBlurH; //tex1
		RenderTarget = texColorHDR1;
	}

	pass SSAOBlurV
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_SSAOBlurV; //tex2
		RenderTarget = texColorHDR2;
	}

	pass EmptyHDR1
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_EmptyPassHDR1; 
		RenderTarget = texColorHDR1;
	}
	#endif
	
	#if (USE_GP65CJ042DOF == 0 && USE_MATSODOF == 0 && USE_PETKAGTADOF == 1)
	pass PETKADOF
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_ProcessDoFBokeh;
		RenderTarget = texColorHDR2;
	} //tex2

	pass EmptyHDR2
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_EmptyPassHDR1; 
		RenderTarget = texColorHDR1;
	}
	#endif
	
	#if (USE_GP65CJ042DOF == 0 && USE_MATSODOF == 1 && USE_PETKAGTADOF == 0)
	pass MATSODOF1
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_ProcessPass_FastDoF1; //tex2
		RenderTarget = texColorHDR2;
	}
	pass MATSODOF2
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_ProcessPass_FastDoF2; //tex1
		RenderTarget = texColorHDR1;
	}
	pass MATSODOF3
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_ProcessPass_FastDoF3; //tex2
		RenderTarget = texColorHDR2;
	}
	pass MATSODOF4
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_ProcessPass_FastDoF4; //tex1
		RenderTarget = texColorHDR1;
	}
	#endif

	#if (USE_GP65CJ042DOF == 1 && USE_MATSODOF == 0 && USE_PETKAGTADOF == 0)
	pass GPDOF1
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_GPDOFFocus;//tex2
		RenderTarget = texColorHDR2;
	}
	pass GPDOF2
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_GPDOFBokehblur;//tex1
		RenderTarget = texColorHDR1;
	}
	pass GPDOF3
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_GPDOFGaussianH;//tex2
		RenderTarget = texColorHDR2;
	}
	pass GPDOF4
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_GPDOFGaussianV;//tex1
		RenderTarget = texColorHDR1;
	}
	#endif

	#if(USE_TILTSHIFT == 1)
	pass TiltShiftCoC
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_TiltShiftCoC; //tex2
		RenderTarget = texColorHDR2;
	}
	pass TiltShiftH
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_TiltShiftH; //tex1
		RenderTarget = texColorHDR1;
	}
	pass TiltShiftV
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_TiltShiftV; //tex2
		RenderTarget = texColorHDR2;
	}

	pass EmptyHDR3
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_EmptyPassHDR1; 
		RenderTarget = texColorHDR1;
	}
	#endif

	pass Image
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_Image; //tex2
		RenderTarget = texColorHDR2;
	}
	
	#if (USE_CHROMATICABBERATION == 1)
	pass Distort
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_Distort; //tex1
		RenderTarget = texColorHDR1;
	}

	pass EmptyHDR4
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_EmptyPassHDR2; 
		RenderTarget = texColorHDR2;
	}
	#endif	

	pass Lighting
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_Lighting;
		RenderTarget = texColorHDR1;
	} //tex1

	pass Colors
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_Colors;
		RenderTarget = texColorHDR2;
	}//tex2

	pass Overlay
	{
		VertexShader = VS_PostProcess;
		PixelShader = PS_Overlay;
	}//nix
}


