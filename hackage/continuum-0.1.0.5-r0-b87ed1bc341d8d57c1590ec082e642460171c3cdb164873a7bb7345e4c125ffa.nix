{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { binaries = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "continuum"; version = "0.1.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexp@coffeenco.de";
      author = "Alex Petrov";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Continuum Database Client";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "continuum-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timers" or ((hsPkgs.pkgs-errors).buildDepError "timers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."suspend" or ((hsPkgs.pkgs-errors).buildDepError "suspend"))
            (hsPkgs."leveldb-haskell-fork" or ((hsPkgs.pkgs-errors).buildDepError "leveldb-haskell-fork"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
            (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
            ];
          libs = [
            (pkgs."hyperleveldb" or ((hsPkgs.pkgs-errors).sysDepError "hyperleveldb"))
            ];
          buildable = if flags.binaries then true else false;
          };
        };
      };
    }