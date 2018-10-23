{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { gtk = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "edit-lenses-demo";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "";
      url = "";
      synopsis = "Programs demoing the use of symmetric, stateful edit lenses";
      description = "Some simple demo programs showing ways to use the edit-lenses package.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lens-editor" = {
          depends  = if flags.gtk
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.data-default)
              (hsPkgs.Diff)
              (hsPkgs.edit-lenses)
              (hsPkgs.gtk)
              (hsPkgs.regex-pcre)
            ]
            else [ (hsPkgs.base) ];
        };
      };
    };
  }