{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ArrowVHDL"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "brettschneider@frosch03.de";
      author = "Matthias Brettschneider";
      homepage = "https://github.com/frosch03/arrowVHDL";
      url = "";
      synopsis = "A library to generate Netlist code from Arrow  descriptions.";
      description = "This software is intended to help a developer designing electronic\ncircuits by describing them with arrows. The arrow notation represents\nthe according. From the netlist the developer can generate various\nother formats by \"compiling\" the arrow into them. With this software\nthree basic compilers are shipped. One generates a simple textual\nrepresentation that helps debugging the actual circuit. Another\ngenerates VHDL representations of the circuit. The third one generates\nDOT syntax for visualization of circuits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }