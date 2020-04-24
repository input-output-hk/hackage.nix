{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "HFuse"; version = "0.2.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/m15k/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with Linux, OSXFUSE and FreeBSD.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = if system.isOsx
          then [
            (pkgs."osxfuse" or ((hsPkgs.pkgs-errors).sysDepError "osxfuse"))
            ]
          else [ (pkgs."fuse" or ((hsPkgs.pkgs-errors).sysDepError "fuse")) ];
        buildable = true;
        };
      exes = {
        "HelloFS" = {
          depends = (pkgs.lib).optionals (flags.developer) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HFuse" or ((hsPkgs.pkgs-errors).buildDepError "HFuse"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.developer then true else false;
          };
        };
      };
    }