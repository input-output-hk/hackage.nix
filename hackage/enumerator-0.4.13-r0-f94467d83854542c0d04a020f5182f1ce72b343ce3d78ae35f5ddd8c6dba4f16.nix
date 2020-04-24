{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "enumerator"; version = "0.4.13"; };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/enumerator/";
      url = "";
      synopsis = "Reliable, high-performance processing with left-fold enumerators";
      description = "Typical buffer&#x2013;based incremental I/O is based around a single loop,\nwhich reads data from some source (such as a socket or file), transforms\nit, and generates one or more outputs (such as a line count, HTTP\nresponses, or modified file). Although efficient and safe, these loops are\nall single&#x2013;purpose; it is difficult or impossible to compose\nbuffer&#x2013;based processing loops.\n\nHaskell&#x2019;s concept of &#x201C;lazy I/O&#x201D; allows pure code to\noperate on data from an external source. However, lazy I/O has several\nshortcomings. Most notably, resources such as memory and file handles can\nbe retained for arbitrarily long periods of time, causing unpredictable\nperformance and error conditions.\n\nEnumerators are an efficient, predictable, and safe alternative to lazy\nI/O. Discovered by Oleg Kiselyov, they allow large datasets to be processed\nin near&#x2013;constant space by pure code. Although somewhat more complex\nto write, using enumerators instead of lazy I/O produces more correct\nprograms.\n\nThis library contains an enumerator implementation for Haskell, designed to\nbe both simple and efficient. Three core types are defined, along with\nnumerous helper functions:\n\n* /Iteratee/: Data sinks, analogous to left folds. Iteratees consume\na sequence of /input/ values, and generate a single /output/ value.\nMany iteratees are designed to perform side effects (such as printing to\n@stdout@), so they can also be used as monad transformers.\n\n* /Enumerator/: Data sources, which generate input sequences. Typical\nenumerators read from a file handle, socket, random number generator, or\nother external stream. To operate, enumerators are passed an iteratee, and\nprovide that iteratee with input until either the iteratee has completed its\ncomputation, or EOF.\n\n* /Enumeratee/: Data transformers, which operate as both enumerators and\niteratees. Enumeratees read from an /outer/ enumerator, and provide the\ntransformed data to an /inner/ iteratee.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
            ]);
        buildable = true;
        };
      };
    }