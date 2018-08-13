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
      specVersion = "1.6";
      identifier = {
        name = "imagepaste";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "baltazar.bz@gmail.com";
      author = "Yuri Bochkarev";
      homepage = "https://bitbucket.org/balta2ar/imagepaste";
      url = "";
      synopsis = "Command-line image paste utility";
      description = "Command-line utility to paste images to image hosting sites.\nImage hosting sites are internally called engines. Some engines\nsupport pasting not just image files but any files so with\nsome engines the program can be used as a file sharing client.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "imagepaste" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.regex-posix)
            (hsPkgs.tagsoup)
            (hsPkgs.HTTP)
            (hsPkgs.json)
            (hsPkgs.vcs-revision)
          ];
        };
      };
    };
  }