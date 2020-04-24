{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hxt-relaxng"; version = "9.1.5.5"; };
      license = "MIT";
      copyright = "Copyright (c) 2005-2015 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "The HXT RelaxNG validator";
      description = "The HXT RelaxNG validator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."hxt-charproperties" or ((hsPkgs.pkgs-errors).buildDepError "hxt-charproperties"))
          (hsPkgs."hxt-regex-xmlschema" or ((hsPkgs.pkgs-errors).buildDepError "hxt-regex-xmlschema"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            ]
          else if compiler.isGhc && (compiler.version).ge "7.10"
            then [
              (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]);
        buildable = true;
        };
      };
    }