{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "reactive-banana-gi-gtk";
        version = "0.4.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Matthew Robinson";
      homepage = "https://github.com/mr/reactive-banana-gi-gtk";
      url = "";
      synopsis = "Simple reactive programming with GTK GObject Introspection";
      description = "Create Events and Behaviors from GTK signals and attributes. Also supports sinking to attributes.";
      buildType = "Simple";
    };
    components = {
      "reactive-banana-gi-gtk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reactive-banana)
          (hsPkgs.gi-gtk)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.transformers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "reactive-banana-gi-gtk-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.reactive-banana-gi-gtk)
          ];
        };
      };
    };
  }