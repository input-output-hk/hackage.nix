{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "AGI"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "Jeremy Shaw";
      homepage = "http://src.seereason.com/haskell-agi";
      url = "";
      synopsis = "A library for writing AGI scripts for Asterisk";
      description = "Asterisk is an open-source Voice over IP server (VoIP).\nAsterisk provides an Asterisk Gateway Interface (AGI), which\ncan be used to write external programs that interact with\nAsterisk. It is typically used for creating Interactive Voice\nResponse (IVR) systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          ] ++ (if flags.small_base
          then [ (hsPkgs.base) (hsPkgs.random) (hsPkgs.unix) (hsPkgs.network) ]
          else [ (hsPkgs.base) (hsPkgs.network) ]);
        };
      };
    }