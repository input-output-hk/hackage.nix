{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "i3blocks-hs-contrib"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Christian Panadero <panavtec@gmail.com>,\nCarlos Morera <carlosdelachica@gmail.com>";
      author = "Christian Panadero <panavtec@gmail.com>,\nCarlos Morera <carlosdelachica@gmail.com>";
      homepage = "https://github.com/panavtec/i3blocks-hs-contrib#readme";
      url = "";
      synopsis = "Base i3blocks written in haskell";
      description = "@i3blocks-hs-contrib@ defines a set of blocks for your i3 bar";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
        };
      exes = {
        "AirplaneMode" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Bandwidth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.turtle)
            ];
          };
        "Battery" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Bitcoin" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.text)
            (hsPkgs.turtle)
            (hsPkgs.wreq)
            ];
          };
        "Cpu" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ]; };
        "DateTime" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.turtle)
            ];
          };
        "Docker" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Ip" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ]; };
        "Memory" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "OpenVpn" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Temperature" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Volume" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ];
          };
        "Wifi" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.turtle) ]; };
        };
      };
    }