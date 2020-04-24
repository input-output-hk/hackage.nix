{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "data-reify"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "http://ku-fpg.github.io/software/data-reify/";
      url = "";
      synopsis = "Reify a recursive data structure into an explicit graph.";
      description = "'data-reify' provided the ability to turn recursive structures into explicit graphs.\nMany (implicitly or explicitly) recursive data structure can be given this ability, via\na type class instance. This gives an alternative to using 'Ref' for observable sharing.\n\nObservable sharing in general is unsafe, so we use the IO monad to bound this effect,\nbut can be used safely even with 'unsafePerformIO' if some simple conditions are met.\nTypically this package will be used to tie the knot with DSL's that depend of\nobservable sharing, like Lava.\n\nProviding an instance for 'MuRef' is the mechanism for allowing a structure to be\nreified into a graph, and several examples of this are provided.\n\nHistory:\nVersion 0.1 used unsafe pointer compares.\nVersion 0.2 of 'data-reify' used 'StableName's, and was much faster.\nVersion 0.3 provided two versions of 'MuRef', the mono-typed version,\nfor trees of a single type,\nand the dynamic-typed version, for trees of different types.\nVersion 0.4 used 'Int' as a synonym for 'Unique' rather than 'Data.Unique'\nfor node ids, by popular demand.\nVersion 0.5 merged the mono-typed and dynamic version again, by using\n'DynStableName', an unphantomized version of StableName.\n\n&#169; 2009 Andy Gill; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "data-reify-test1" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test2" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test3" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test4" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test5" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test6" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        "data-reify-test7" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-reify" or ((hsPkgs.pkgs-errors).buildDepError "data-reify"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }