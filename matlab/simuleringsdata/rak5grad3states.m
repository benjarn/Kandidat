% -------------------------------------------------------------------
%  Generated by MATLAB on 10-May-2015 21:02:19
%  MATLAB version: 8.5.0.197613 (R2015a)
% -------------------------------------------------------------------
saveVarsMat = load('rak5grad3states.mat');

A = ...
  [0.066666666666666666 -0.33333333333333331 -0;
   -0 0.33333333333333331 -0.066666666666666666;
   -0 -0 0.066666666666666666];

alpha = 0.1;

B = [-0; -0; -0.2];

C = ...
  [1 0 0;
   0 1 0;
   0 0 1];

D = [0; 0; 0];

e = [-0.33349547825185288; -0.19743230745405768; -0.099001262410809629];

F = [3.0792928211969715; 0.63395801598972357; 2.937768837875705];

feedbackPoles = [-0.33349547825185288; -0.19743230745405768; -0.099001262410809629; ...
                 ];

input_sim = saveVarsMat.input_sim; % <5981x1 double> too many elements

K = [-3.9393419239093079 38.111602489131194 -5.4829785739169186];

L1 = 5;

L2 = 15;

L3 = 3;

L4 = 15;

phi1e = 0.2937768837875705;

phi2e = 0.063395801598972359;

phi3e = 0.30792928211969717;

poles = [0.066666666666666666; 0.33333333333333331; 0.066666666666666666; ...
         ];

Q = ...
  [1 0 0;
   0 1 0;
   0 0 1];

R = 1;

r1 = 49.833222116296184;

r2 = 49.581750942177415;

r3 = 47.25833287889143;

r4 = 47.163015451645059;

S = ...
  [108.88811095102277 -284.59649122281957 19.696709619546539;
   -284.59649122281957 1892.6448752115168 -190.55801244565595;
   19.696709619546539 -190.55801244565595 27.414892869584591];

states_sim = saveVarsMat.states_sim; % <5981x3 double> too many elements

sys = saveVarsMat.sys; % <1x1 ss> unsupported class

sys_cl = saveVarsMat.sys_cl; % <1x1 ss> unsupported class

theta4_sim = saveVarsMat.theta4_sim; % <5981x1 double> too many elements

tout = [419.8947175121624; 419.89471751216604; 419.90000000000003; 419.90528248783403; ...
        419.915847463502; 419.936977414838; 419.97923731750996; 420; 420.1; ...
        420.20000000000005; 420.3; 420.40000000000003; 420.5; 420.6; 420.70000000000005; ...
        420.8; 420.90000000000003; 421; 421.1; 421.20000000000005; 421.3; ...
        421.40000000000003; 421.5; 421.6; 421.70000000000005; 421.8; 421.90000000000003; ...
        422; 422.1; 422.20000000000005; 422.3; 422.40000000000003; 422.4863223136141; ...
        422.48632231361773; 422.5; 422.51367768638227; 422.5410330591468; ...
        422.6; 422.70000000000005; 422.8; 422.90000000000003; 423; 423.1; ...
        423.20000000000005; 423.3; 423.40000000000003; 423.5; 423.6; 423.70000000000005; ...
        423.8; 423.90000000000003; 424; 424.1; 424.20000000000005; 424.3; ...
        424.40000000000003; 424.5; 424.6; 424.70000000000005; 424.8; 424.90000000000003; ...
        425; 425.1; 425.20000000000005; 425.26237535451378; 425.26237535451742; ...
        425.3; 425.33762464548261; 425.40000000000003; 425.5; 425.6; 425.70000000000005; ...
        425.8; 425.90000000000003; 425.91440002932364; 425.91440002932728; ...
        426; 426.08559997067272; 426.1; 426.17200014663655; 426.20000000000005; ...
        426.3; 426.40000000000003; 426.5; 426.6; 426.70000000000005; 426.8; ...
        426.90000000000003; 427; 427.1; 427.20000000000005; 427.3; 427.40000000000003; ...
        427.5; 427.6; 427.70000000000005; 427.8; 427.90000000000003; 428; ...
        428.1; 428.20000000000005; 428.3; 428.40000000000003; 428.5; 428.6; ...
        428.70000000000005; 428.8; 428.90000000000003; 429; 429.1; 429.20000000000005; ...
        429.3; 429.40000000000003; 429.5; 429.6; 429.70000000000005; 429.8; ...
        429.90000000000003; 429.90650124840437; 429.906501248408; 430; ...
        430.1; 430.20000000000005; 430.3; 430.40000000000003; 430.5; 430.6; ...
        430.70000000000005; 430.8; 430.90000000000003; 430.95756035603296; ...
        430.95756035603659; 431; 431.04243964396341; 431.1; 431.20000000000005; ...
        431.3; 431.40000000000003; 431.5; 431.6; 431.70000000000005; 431.8; ...
        431.90000000000003; 432; 432.1; 432.20000000000005; 432.3; 432.40000000000003; ...
        432.5; 432.597607296064; 432.59760729606762; 432.6; 432.60239270393242; ...
        432.60717811179723; 432.61674892752683; 432.63589055898603; 432.67417382190445; ...
        432.70000000000005; 432.8; 432.81724578798963; 432.81724578799327; ...
        432.90000000000003; 432.9827542120068; 433; 433.086228939966; 433.1; ...
        433.10248398815804; 433.10248398816168; 433.17133928833169; 433.20000000000005; ...
        433.3; 433.40000000000003; 433.5; 433.6; 433.70000000000005; 433.8; ...
        433.90000000000003; 434; 434.1; 434.20000000000005; 434.3; 434.36279268154584; ...
        434.36279268154948; 434.40000000000003; 434.43720731845059; 434.5; ...
        434.6; 434.70000000000005; 434.8; 434.90000000000003; 435; 435.1; ...
        435.20000000000005; 435.3; 435.40000000000003; 435.5; 435.6; 435.70000000000005; ...
        435.8; 435.90000000000003; 436; 436.1; 436.20000000000005; 436.3; ...
        436.40000000000003; 436.5; 436.6; 436.70000000000005; 436.8; 436.90000000000003; ...
        437; 437.1; 437.20000000000005; 437.3; 437.40000000000003; 437.5; ...
        437.6; 437.70000000000005; 437.8; 437.90000000000003; 438; 438.1; ...
        438.20000000000005; 438.3; 438.40000000000003; 438.5; 438.6; 438.70000000000005; ...
        438.8; 438.90000000000003; 439; 439.1; 439.20000000000005; 439.3; ...
        439.38423897765745; 439.38423897766108; 439.40000000000003; 439.415761022339; ...
        439.44728306701688; 439.5; 439.6; 439.61792198279323; 439.61792198279687; ...
        439.70000000000005; 439.78207801720322; 439.8; 439.889609913984; ...
        439.90000000000003; 439.95195043008033; 440; 440.1; 440.20000000000005; ...
        440.3; 440.40000000000003; 440.5; 440.6; 440.60540626950956; 440.6054062695132; ...
        440.70000000000005; 440.8; 440.90000000000003; 441; 441.09359476021245; ...
        441.09359476021609; 441.1; 441.10640523978395; 441.11921571935181; ...
        441.14483667848754; 441.20000000000005; 441.3; 441.40000000000003; ...
        441.5; 441.6; 441.70000000000005; 441.8; 441.81438619469236; 441.814386194696; ...
        441.90000000000003; 441.94641639815814; 441.94641639816177; 442; ...
        442.05358360183823; 442.1; 442.20000000000005; 442.3; 442.40000000000003; ...
        442.5; 442.6; 442.70000000000005; 442.8; 442.90000000000003; 443; ...
        443.1; 443.11624740357593; 443.11624740357956; 443.20000000000005; ...
        443.28375259642053; 443.3; 443.38123701789743; 443.40000000000003; ...
        443.5; 443.6; 443.66647458037278; 443.66647458037642; 443.70000000000005; ...
        443.73352541962367; 443.8; 443.90000000000003; 444; 444.1; 444.20000000000005; ...
        444.3; 444.40000000000003; 444.5; 444.6; 444.70000000000005; 444.8; ...
        444.90000000000003; 444.93854017364015; 444.93854017364379; 445; ...
        445.06145982635621; 445.1; 445.20000000000005; 445.3; 445.40000000000003; ...
        445.5; 445.6; 445.70000000000005; 445.8; 445.90000000000003; 446; ...
        446.1; 446.20000000000005; 446.3; 446.40000000000003; 446.5; 446.6; ...
        446.70000000000005; 446.8; 446.90000000000003; 447; 447.1; 447.20000000000005; ...
        447.3; 447.40000000000003; 447.5; 447.6; 447.70000000000005; 447.8; ...
        447.90000000000003; 448; 448.1; 448.20000000000005; 448.22453721292982; ...
        448.22453721293346; 448.3; 448.37546278706657; 448.40000000000003; ...
        448.5; 448.6; 448.70000000000005; 448.8; 448.90000000000003; 449; ...
        449.1; 449.16879391951159; 449.16879391951522; 449.20000000000005; ...
        449.23120608048487; 449.29361824145451; 449.3; 449.33190879272752; ...
        449.40000000000003; 449.5; 449.6; 449.70000000000005; 449.8; 449.90000000000003; ...
        450; 450.1; 450.20000000000005; 450.3; 450.40000000000003; 450.5; ...
        450.6; 450.70000000000005; 450.8; 450.90000000000003; 451; 451.1; ...
        451.12918354971879; 451.12918354972243; 451.20000000000005; 451.27081645027766; ...
        451.3; 451.40000000000003; 451.5; 451.6; 451.65128380453808; 451.65128380454172; ...
        451.70000000000005; 451.74871619545837; 451.8; 451.90000000000003; ...
        452; 452.1; 452.20000000000005; 452.3; 452.40000000000003; 452.5; ...
        452.6; 452.70000000000005; 452.8; 452.90000000000003; 453; 453.1; ...
        453.20000000000005; 453.3; 453.40000000000003; 453.5; 453.6; 453.70000000000005; ...
        453.8; 453.90000000000003; 454; 454.1; 454.20000000000005; 454.3; ...
        454.40000000000003; 454.5; 454.6; 454.70000000000005; 454.8; 454.90000000000003; ...
        455; 455.1; 455.20000000000005; 455.3; 455.40000000000003; 455.5; ...
        455.6; 455.70000000000005; 455.8; 455.90000000000003; 456; 456.1; ...
        456.20000000000005; 456.3; 456.40000000000003; 456.5; 456.6; 456.70000000000005; ...
        456.8; 456.90000000000003; 457; 457.1; 457.20000000000005; 457.3; ...
        457.40000000000003; 457.5; 457.6; 457.70000000000005; 457.78848526880472; ...
        457.78848526880836; 457.8; 457.81151473119166; 457.83454419357497; ...
        457.88060311834158; 457.90000000000003; 458; 458.1; 458.20000000000005; ...
        458.3; 458.40000000000003; 458.5; 458.6; 458.70000000000005; 458.8; ...
        458.90000000000003; 459; 459.0299912411304; 459.02999124113404; ...
        459.1; 459.170008758866; 459.20000000000005; 459.3; 459.40000000000003; ...
        459.5; 459.6; 459.70000000000005; 459.8; 459.90000000000003; 460; ...
        460.1; 460.20000000000005; 460.3; 460.40000000000003; 460.5; 460.6; ...
        460.70000000000005; 460.8; 460.90000000000003; 461; 461.1; 461.20000000000005; ...
        461.3; 461.40000000000003; 461.5; 461.6; 461.684670944313; 461.68467094431662; ...
        461.70000000000005; 461.71532905568347; 461.74598716705032; 461.8; ...
        461.90000000000003; 462; 462.1; 462.20000000000005; 462.3; 462.40000000000003; ...
        462.5; 462.52894981823874; 462.52894981824238; 462.6; 462.67105018175766; ...
        462.70000000000005; 462.8; 462.90000000000003; 462.95002339518777; ...
        462.95002339519141; 463; 463.04997660480859; 463.1; 463.20000000000005; ...
        463.3; 463.40000000000003; 463.5; 463.6; 463.70000000000005; 463.8; ...
        463.90000000000003; 464; 464.1; 464.20000000000005; 464.3; 464.40000000000003; ...
        464.5; 464.6; 464.70000000000005; 464.8; 464.90000000000003; 465; ...
        465.1; 465.20000000000005; 465.3; 465.40000000000003; 465.5; 465.6; ...
        465.70000000000005; 465.8; 465.90000000000003; 466; 466.1; 466.20000000000005; ...
        466.3; 466.40000000000003; 466.43440709367559; 466.43440709367923; ...
        466.5; 466.56559290632077; 466.6; 466.70000000000005; 466.8; 466.90000000000003; ...
        467; 467.1; 467.20000000000005; 467.3; 467.40000000000003; 467.5; ...
        467.6; 467.70000000000005; 467.8; 467.90000000000003; 468; 468.1; ...
        468.20000000000005; 468.3; 468.40000000000003; 468.5; 468.6; 468.70000000000005; ...
        468.8; 468.87248351063846; 468.8724835106421; 468.90000000000003; ...
        468.92751648935797; 468.98254946807384; 469; 469.08725265963079; ...
        469.1; 469.16373670184618; 469.20000000000005; 469.3; 469.40000000000003; ...
        469.5; 469.6; 469.70000000000005; 469.8; 469.90000000000003; 470; ...
        470.1; 470.20000000000005; 470.3; 470.40000000000003; 470.5; 470.6; ...
        470.70000000000005; 470.8; 470.90000000000003; 471; 471.1; 471.20000000000005; ...
        471.3; 471.40000000000003; 471.5; 471.6; 471.70000000000005; 471.8; ...
        471.90000000000003; 472; 472.1; 472.20000000000005; 472.3; 472.40000000000003; ...
        472.42683744314991; 472.42683744315354; 472.5; 472.57316255684646; ...
        472.6; 472.70000000000005; 472.8; 472.90000000000003; 473; 473.1; ...
        473.20000000000005; 473.3; 473.40000000000003; 473.5; 473.6; 473.70000000000005; ...
        473.8; 473.90000000000003; 474; 474.1; 474.20000000000005; 474.3; ...
        474.40000000000003; 474.44102200451573; 474.44102200451937; 474.5; ...
        474.55897799548063; 474.6; 474.70000000000005; 474.8; 474.90000000000003; ...
        475; 475.1; 475.187225654817; 475.18722565482062; 475.20000000000005; ...
        475.21277434517947; 475.23832303553831; 475.289420416256; 475.3; ...
        475.35289791872003; 475.40000000000003; 475.5; 475.6; 475.70000000000005; ...
        475.8; 475.90000000000003; 476; 476.1; 476.20000000000005; 476.3; ...
        476.40000000000003; 476.41101639164117; 476.41101639164481; 476.5; ...
        476.58898360835519; 476.6; 476.65508195822417; 476.70000000000005; ...
        476.8; 476.90000000000003; 477; 477.09565393443023; 477.09565393443387; ...
        477.1; 477.10434606556618; 477.11303819669848; 477.1304224589631; ...
        477.16519098349232; 477.20000000000005; 477.3; 477.40000000000003; ...
        477.5; 477.6; 477.70000000000005; 477.8; 477.90000000000003; 478; ...
        478.1; 478.20000000000005; 478.3; 478.40000000000003; 478.5; 478.58105397613258; ...
        478.58105397613622; 478.6; 478.61894602386383; 478.65683807159144; ...
        478.70000000000005; 478.8; 478.90000000000003; 479; 479.1; 479.20000000000005; ...
        479.3; 479.40000000000003; 479.5; 479.6; 479.70000000000005; 479.8; ...
        479.8519049535422; 479.85190495354584; 479.90000000000003; 479.94809504645423; ...
        480; 480.1; 480.20000000000005; 480.3; 480.40000000000003; 480.5; ...
        480.6; 480.70000000000005; 480.8; 480.90000000000003; 481; 481.1; ...
        481.20000000000005; 481.3; 481.40000000000003; 481.5; 481.6; 481.70000000000005; ...
        481.8; 481.90000000000003; 482; 482.1; 482.12710341277574; 482.12710341277938; ...
        482.20000000000005; 482.27289658722071; 482.3; 482.40000000000003; ...
        482.42979670682377; 482.4297967068274; 482.5; 482.50753736065752; ...
        482.50753736066116; 482.57774065383376; 482.6; 482.70000000000005; ...
        482.8; 482.84845664791982; 482.84845664792346; 482.90000000000003; ...
        482.95154335207661; 483; 483.1; 483.20000000000005; 483.3; 483.40000000000003; ...
        483.5; 483.6; 483.70000000000005; 483.8; 483.90000000000003; 484; ...
        484.1; 484.20000000000005; 484.3; 484.40000000000003; 484.5; 484.6; ...
        484.70000000000005; 484.8; 484.90000000000003; 485; 485.1; 485.20000000000005; ...
        485.3; 485.40000000000003; 485.5; 485.6; 485.70000000000005; 485.8; ...
        485.90000000000003; 486; 486.1; 486.20000000000005; 486.3; 486.40000000000003; ...
        486.5; 486.6; 486.70000000000005; 486.8; 486.90000000000003; 487; ...
        487.1; 487.20000000000005; 487.3; 487.40000000000003; 487.5; 487.6; ...
        487.70000000000005; 487.8; 487.90000000000003; 488; 488.1; 488.20000000000005; ...
        488.3; 488.40000000000003; 488.5; 488.6; 488.70000000000005; 488.8; ...
        488.90000000000003; 489; 489.1; 489.20000000000005; 489.3; 489.40000000000003; ...
        489.5; 489.6; 489.70000000000005; 489.8; 489.90000000000003; 490; ...
        490.1; 490.16154372913149; 490.16154372913513; 490.20000000000005; ...
        490.23845627086496; 490.3; 490.40000000000003; 490.5; 490.6; 490.70000000000005; ...
        490.71995804693859; 490.71995804694222; 490.8; 490.8800419530578; ...
        490.90000000000003; 491; 491.1; 491.20000000000005; 491.3; 491.40000000000003; ...
        491.5; 491.6; 491.66629185962557; 491.66629185962921; 491.70000000000005; ...
        491.73370814037088; 491.8; 491.90000000000003; 492; 492.1; 492.20000000000005; ...
        492.3; 492.40000000000003; 492.44526763519167; 492.44526763519531; ...
        492.5; 492.55473236480469; 492.6; 492.70000000000005; 492.8; 492.90000000000003; ...
        493; 493.1; 493.20000000000005; 493.3; 493.40000000000003; 493.5; ...
        493.6; 493.70000000000005; 493.8; 493.8361938659761; 493.83619386597974; ...
        493.90000000000003; 493.92337622641048; 493.92337622641412; 493.98718236043442; ...
        494; 494.06408819782791; 494.1; 494.136902497999; 494.13690249800266; ...
        494.20000000000005; 494.26309750199744; 494.3; 494.40000000000003; ...
        494.5; 494.6; 494.70000000000005; 494.75597057118745; 494.75597057119109; ...
        494.8; 494.84402942880894; 494.90000000000003; 495; 495.1; 495.20000000000005; ...
        495.2229733609426; 495.22297336094624; 495.3; 495.37702663905378; ...
        495.40000000000003; 495.5; 495.6; 495.70000000000005; 495.8; 495.90000000000003; ...
        496; 496.1; 496.20000000000005; 496.3; 496.38678022479644; 496.38678022480008; ...
        496.40000000000003; 496.4132197752; 496.43965932559991; 496.49253842639973; ...
        496.5; 496.50338967551147; 496.50338967551511; 496.54069754351644; ...
        496.57800541151778; 496.6; 496.64781956552946; 496.6478195655331; ...
        496.70000000000005; 496.752180434467; 496.79726949821492; 496.79726949821855; ...
        496.8; 496.80273050178147; 496.80819150534438; 496.81911351247021; ...
        496.84095752672187; 496.88464555522518; 496.90000000000003; 496.97677222387432; ...
        497; 497.1; 497.20000000000005; 497.3; 497.40000000000003; 497.5; ...
        497.6; 497.70000000000005; 497.8; 497.90000000000003; 498; 498.1; ...
        498.20000000000005; 498.3; 498.40000000000003; 498.5; 498.6; 498.70000000000005; ...
        498.8; 498.90000000000003; 499; 499.1; 499.20000000000005; 499.3; ...
        499.40000000000003; 499.5; 499.6; 499.70000000000005; 499.8; 499.90000000000003; ...
        500];

Xd = [0.30792928211969717; 0.063395801598972359; 0.2937768837875705];

y4_sim = saveVarsMat.y4_sim; % <5981x1 double> too many elements

clear saveVarsMat;