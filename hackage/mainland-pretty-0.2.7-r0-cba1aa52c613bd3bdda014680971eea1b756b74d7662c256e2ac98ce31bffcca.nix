{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mainland-pretty";
        version = "0.2.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2012 Geoffrey Mainland";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "Pretty printing designed for printing source code.";
      description = "Pretty printing designed for printing source code based on\nWadler's paper /A Prettier Printer/. The main advantage of this\nlibrary is its ability to automatically track the source\nlocations associated with pretty printed values and output\nappropriate #line pragmas and its ability to produce output\nin the form of lazy text using a builder.";
      buildType = "Simple";
    };
    components = {
      "mainland-pretty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.srcloc)
          (hsPkgs.text)
        ];
      };
    };
  }