{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "portaudio"; version = "0.2.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 John Van Enk";
      maintainer = "vanenkj@gmail.com, avaitla16@gmail.com";
      author = "John Van Enk, Anil Vaitla";
      homepage = "http://code.haskell.org/portaudio";
      url = "";
      synopsis = "Haskell bindings for the PortAudio library.";
      description = "Bindings to the cross platform PortAudio library. Version 0.0.1 excludes the callback model.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [
          (pkgs."portaudio" or ((hsPkgs.pkgs-errors).sysDepError "portaudio"))
          ];
        buildable = true;
        };
      };
    }