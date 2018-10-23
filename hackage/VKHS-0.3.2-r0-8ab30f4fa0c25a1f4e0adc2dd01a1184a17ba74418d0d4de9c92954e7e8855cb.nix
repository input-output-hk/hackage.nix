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
        name = "VKHS";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Sergey Mironov";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/ierton/vkhs";
      url = "";
      synopsis = "Provides access to Vkontakte social network via public API";
      description = "Provides access to Vkontakte API methods. Library requires no interaction\nwith the user during Implicit-flow authentication.";
      buildType = "Simple";
    };
    components = {
      "VKHS" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagsoup-parsec)
          (hsPkgs.tagsoup)
          (hsPkgs.mtl)
          (hsPkgs.failure)
          (hsPkgs.bytestring)
          (hsPkgs.curlhs)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          (hsPkgs.bimap)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.fclabels)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.regexpr)
          (hsPkgs.pretty-show)
          (hsPkgs.vector)
          (hsPkgs.text)
        ];
      };
      exes = { "vkq" = {}; };
    };
  }