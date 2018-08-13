{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lambdabot-misc-plugins";
        version = "5.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Lambdabot miscellaneous plugins";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[dummy] Many commands with fixed replies.\n\n[error] Debug error handling.\n\n[fresh] Generate Haskell project names.\n\n[hello] Hello, world.\n\n[stats] Ad-hoc statsd queries.\n\n[todo] A to-do list for lambdabot.";
      buildType = "Simple";
    };
    components = {
      "lambdabot-misc-plugins" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hstatsd)
          (hsPkgs.lambdabot-core)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.random-fu)
          (hsPkgs.random-source)
          (hsPkgs.regex-tdfa)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.split)
          (hsPkgs.tagsoup)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
    };
  }