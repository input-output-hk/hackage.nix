{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cprng-aes"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cprng-aes";
      url = "";
      synopsis = "Crypto Pseudo Random Number Generator using AES in counter mode.";
      description = "Simple crypto pseudo-random-number-generator with really good randomness property.\n\nUsing ent, a randomness property maker on one 1Mb sample:\nEntropy = 7.999837 bits per byte.\nOptimum compression would reduce the size of this 1048576 byte file by 0 percent.\nChi square distribution for 1048576 samples is 237.02\nArithmetic mean value of data bytes is 127.3422 (127.5 = random)\nMonte Carlo value for Pi is 3.143589568 (error 0.06 percent)\n\nCompared to urandom with the same sampling:\nEntropy = 7.999831 bits per byte.\nOptimum compression would reduce the size of this 1048576 byte file by 0 percent.\nChi square distribution for 1048576 samples is 246.63\nArithmetic mean value of data bytes is 127.6347 (127.5 = random).\nMonte Carlo value for Pi is 3.132465868 (error 0.29 percent).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
          (hsPkgs."cipher-aes" or ((hsPkgs.pkgs-errors).buildDepError "cipher-aes"))
          ];
        buildable = true;
        };
      benchmarks = {
        "bench-cprng-aes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."crypto-random" or ((hsPkgs.pkgs-errors).buildDepError "crypto-random"))
            (hsPkgs."cprng-aes" or ((hsPkgs.pkgs-errors).buildDepError "cprng-aes"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }