{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "barley"; version = "0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "markl@glyphic.com";
      author = "Johan Tibell, Mark Lentczner";
      homepage = "";
      url = "";
      synopsis = "A web based environment for learning and tinkering with Haskell";
      description = "Barley is an environment for tinkering with Haskell.  It is a web\nserver with an embedded simple programming environment rendered as\nweb pages.  The environment allows you to easily edit Haskell code\nand quickly see the result of running it.\nBarley includes a tutorial aimed at people with some programming\nand web experience, but it assumes no exposure to Haskell or\nfunctional programming.  The tutorial takes the developer from\ngenerating a simple web page through a modest web application with\ndatabase backend storage.  Along the way it exposes the programmer\nto the basic idioms needed to do simple programming tasks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "barley" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghc)
            (hsPkgs.ghc-prim)
            (hsPkgs.plugins)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.html)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }