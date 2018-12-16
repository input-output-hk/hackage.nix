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
      specVersion = "1.10";
      identifier = {
        name = "lambdabot-utils";
        version = "4.2.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jan Stolarek <jan.stolarek@p.lodz.pl>";
      author = "Don Stewart et al.";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Utility libraries for the advanced IRC bot, Lambdabot";
      description = "This package is deprecated.  It's functionality has been folded into the lambdabot package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.haskell-src)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-time)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-posix)
          (hsPkgs.syb)
          (hsPkgs.tagsoup)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
          (hsPkgs.zlib)
        ];
      };
    };
  }