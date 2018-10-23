{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gogol";
        version = "0.1.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015-2016 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Comprehensive Google Services SDK.";
      description = "This client library contains request and response logic to communicate\nwith Google Services compatible APIs using the types supplied by the\nvarious @gogol-*@ service libraries. See the <http://hackage.haskell.org/packages/#cat:Google Google>\ncategory on Hackage for supported services.\n\nTo get started, import the desired @gogol-*@ library (such as\n<http://hackage.haskell.org/package/gogol-gmail/docs/Network-Google-Gmail.html Network.Google.Gmail>)\nand @Network.Google@ from this package.\n\n/Warning:/ This is an experimental prototype/preview release which is still\nunder exploratory development and not intended for public use, caveat emptor!\n\nGHC 7.10.2 and higher is officially supported.";
      buildType = "Simple";
    };
    components = {
      "gogol" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.gogol-core)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.mime-types)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
        ];
      };
    };
  }