{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "simple"; version = "0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "amit@amitlevy.com";
      author = "Amit Levy";
      homepage = "";
      url = "";
      synopsis = "A minimalist web framework for the WAI server interface";
      description = "\\Simple\\ is \\\"framework-less\\\" web framework for Haskell web applications\nusing the WAI server interface (e.g. for use with the warp server). Unlike\nother frameoworks, \\Simple\\ does not enforce a particular structure or\nparadigm for web applications. Rather, \\Simple\\ makes it easier for you, the\ndeveloper, to use whichever paradigm or structure you like. This package\nincludes:\n\n* Web application building blocks under Web.Simple\n\n* A Sintra (http://www.sinatrarb.com) inspired DSL - Web.Frank\n\n* A Monad for building RESTful controllers - Web.REST\n\nTo get started using the warp web server:\n\n@\n\$ cabal install simple warp\n@\n\n\\helloworld.hs\\:\n\n> import Web.Simple\n> import Network.Wai.Handler.Warp\n>\n> main :: IO ()\n> main = runSettings defaultSettings \$ mkRouter \$\n>         okHtml \"Hello World\"\n\n@\$ runghc -XOverloadedStrings helloworld.hs@\n\nSee /Web.Simple/ for a more detailed introduction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.conduit)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.network)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "smpl" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.hint)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-handler-devel)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.postgresql-simple)
            (hsPkgs.network)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }