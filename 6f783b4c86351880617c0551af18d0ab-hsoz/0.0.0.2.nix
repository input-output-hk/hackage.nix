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
        name = "hsoz";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Rodney Lorrimar";
      maintainer = "dev@rodney.id.au";
      author = "Rodney Lorrimar";
      homepage = "https://github.com/rvl/hsoz#readme";
      url = "";
      synopsis = "Iron, Hawk, Oz: Web auth protocols";
      description = "<<images/iron.png>> &#x20;__&#x20;\n<<images/hawk.png>> &#x20;__&#x20;\n<<images/oz.png>>\n\n__hsoz__ is a Haskell implementation of the Iron, Hawk, and Oz web\nauthentication protocols. These protocols originate from the OAuth2\nstandardisation process, but are designed to be simpler to implement\nfor the common case of web applications.\n\nThis module is based on the Javascript code and documentation by\nEran Hammer and others. A fair amount of Hammer's descriptive text\nhas been incorporated into this documentation, as well as the cool\nlogos.\n\n== Introduction\n\nIn the words of their principal designer:\n\n__Iron__ is a cryptographic utility for sealing a JSON object using\nsymmetric key encryption with message integrity verification. Or in\nother words, it lets you encrypt an object, send it around (in\ncookies, authentication credentials, etc.), then receive it back and\ndecrypt it. The algorithm ensures that the message was not tampered\nwith, and also provides a simple mechanism for password rotation.\n\n__Hawk__ is an HTTP authentication scheme using a message\nauthentication code (MAC) algorithm to provide partial HTTP request\ncryptographic verification.\n\n__Oz__ is a web authorization protocol based on industry best\npractices. Oz combines the Hawk authentication protocol with the\nIron encryption protocol to provide a simple to use and secure\nsolution for granting and authenticating third-party access to an\nAPI on behalf of a user or an application.\n\n== Usage\n\nThe top-level \"Network.Iron\", \"Network.Hawk\", \"Network.Oz\" modules\ncontain further instructions on their usage. There are also some\nexample server and client programs within the\n<https://github.com/rvl/hsoz project git repository>.";
      buildType = "Simple";
    };
    components = {
      "hsoz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.scotty)
          (hsPkgs.securemem)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "hsoz-example" = {
          depends  = [
            (hsPkgs.hsoz)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lucid)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uri-bytestring)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.wreq)
          ];
        };
      };
      tests = {
        "hsoz-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsoz)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-golden)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.time)
            (hsPkgs.data-default)
            (hsPkgs.wai)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }