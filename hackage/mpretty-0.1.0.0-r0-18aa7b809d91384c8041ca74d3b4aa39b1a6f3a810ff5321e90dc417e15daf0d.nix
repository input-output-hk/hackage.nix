{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mpretty";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "david.darais@gmail.com";
      author = "David Darais";
      homepage = "";
      url = "";
      synopsis = "a monadic, extensible pretty printing library";
      description = "based on wadler-leijen printing.  supports ansi colors,\nconfigurable list printing styles, and extension of the printing monad";
      buildType = "Simple";
    };
    components = {
      "mpretty" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-lens-fd)
          (hsPkgs.data-lens-template)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.orders)
        ];
      };
    };
  }