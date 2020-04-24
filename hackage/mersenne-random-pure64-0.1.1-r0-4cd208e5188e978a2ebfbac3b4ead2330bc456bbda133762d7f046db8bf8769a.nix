{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = false; };
    package = {
      specVersion = "1.2.0";
      identifier = { name = "mersenne-random-pure64"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mt19937-random";
      url = "";
      synopsis = "Generate high quality pseudorandom numbers purely using a Mersenne Twister";
      description = "The Mersenne twister is a pseudorandom number generator developed by\nMakoto Matsumoto and Takuji Nishimura that is based on a matrix linear\nrecurrence over a finite binary field. It provides for fast generation\nof very high quality pseudorandom numbers. The source for the C code\ncan be found here:\n\n<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt64.html>\n\nThis library provides a purely functional binding to the 64 bit\nclassic mersenne twister, along with instances of RandomGen, so the\ngenerator can be used with System.Random. The generator should\ntypically be a few times faster than the default StdGen (but much\nslower than the impure 'mersenne-random' library based on SIMD\ninstructions and destructive state updates.\n";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
        buildable = true;
        };
      };
    }