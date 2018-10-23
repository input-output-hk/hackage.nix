{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "yuiGrid";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "sergio.urinovsky@gmail.com";
      author = "RedNucleus (see AUTHORS)";
      homepage = "";
      url = "";
      synopsis = "Grids defined by layout hints and implemented on top of Yahoo grids.";
      description = "The grid is specified by boxes, containers and hints telling how these boxes and containers should be laid out. The hints also\ninclude CSS specifications. Everything is rendered to html using Yahoo grids through the contextual html combinators\n(see yahoo grids in  <http://developer.yahoo.com/yui/grids >).\nThe contextual html combinators are also implemented in this package (called CxML here). They allow to keep track of input context\nand output html parts like inline CSSs, JSs, etc.";
      buildType = "Simple";
    };
    components = {
      "yuiGrid" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }