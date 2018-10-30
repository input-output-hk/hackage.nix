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
      specVersion = "1.6";
      identifier = {
        name = "VKHS";
        version = "0.5.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Sergey Mironov";
      maintainer = "ierton@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/grwlf/vkhs";
      url = "";
      synopsis = "Provides access to Vkontakte social network via public API";
      description = "Provides access to Vkontakte API methods. Library requires no interaction\nwith the user during Implicit-flow authentication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.tagsoup-parsec)
          (hsPkgs.tagsoup)
          (hsPkgs.failure)
          (hsPkgs.curlhs)
          (hsPkgs.safe)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.utf8-string)
          (hsPkgs.bimap)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.regexpr)
          (hsPkgs.pretty-show)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "vknews" = {
          libs = [ (pkgs."curl") ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
        "vkq" = {};
      };
    };
  }