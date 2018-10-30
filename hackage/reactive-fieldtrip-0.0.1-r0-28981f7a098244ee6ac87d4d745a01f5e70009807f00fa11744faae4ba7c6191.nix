{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "reactive-fieldtrip";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/project-foo";
      url = "http://code.haskell.org/project-foo";
      synopsis = "Connect Reactive and FieldTrip";
      description = "This library supports functionally programming reactive, animated, 3D\ngraphics.  It connects ''Reactive'' (a functional reactive programming\nlibrary) and ''FieldTrip'' (a functional 3D library).\n\nProject wiki page: <http://haskell.org/haskellwiki/project-foo>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reactive)
          (hsPkgs.reactive-glut)
          (hsPkgs.FieldTrip)
          (hsPkgs.vector-space)
        ];
      };
    };
  }