{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      splitbase = true;
      separatesyb = true;
      functorinstance = true;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "storablevector"; version = "0.2.8.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Spencer Janssen <sjanssen@cse.unl.edu>, Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "";
      synopsis = "Fast, packed, strict storable arrays with a list interface like ByteString";
      description = "Fast, packed, strict storable arrays\nwith a list interface,\na chunky lazy list interface with variable chunk size\nand an interface for write access via the @ST@ monad.\nThis is much like @bytestring@ and @binary@\nbut can be used for every 'Foreign.Storable.Storable' type.\nSee also package\n<http://hackage.haskell.org/package/vector>\nwith a similar intention.\n\nWe do not provide advanced fusion optimization,\nsince especially for lazy vectors\nthis would either be incorrect or not applicable.\nHowever we provide fusion with lazy lists in the package\n<http://hackage.haskell.org/package/storablevector-streamfusion>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ] ++ (if compiler.isJhc && true
          then [
            (hsPkgs."statethread" or ((hsPkgs.pkgs-errors).buildDepError "statethread"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else if flags.splitbase
            then if flags.separatesyb
              then [
                (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
                ]
              else [
                (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
                ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              ] ++ [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]));
          buildable = if flags.buildtests then true else false;
          };
        "speedtest" = {
          depends = (pkgs.lib).optionals (flags.buildtests) ([
            (hsPkgs."sample-frame" or ((hsPkgs.pkgs-errors).buildDepError "sample-frame"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
          buildable = if flags.buildtests then true else false;
          };
        "speedpointer" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }