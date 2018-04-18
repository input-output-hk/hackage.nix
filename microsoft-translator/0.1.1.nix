{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microsoft-translator";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Cliff Harvey 2017";
        maintainer = "cs.hbar@gmail.com";
        author = "Cliff Harvey";
        homepage = "https://github.com/BlackBrane/microsoft-translator";
        url = "";
        synopsis = "Bindings to the Microsoft Translator API";
        description = "Bindings to the text portion of the <https://www.microsoft.com/en-us/translator/products.aspx Microsoft Translator API>.\n\nThe service has a free tier allowing for 2 million translated characters per month.\n\nThe supported endpoints allow for translating (lists of) text, and provide\nsentence-break information about both the original and returned passages.";
        buildType = "Simple";
      };
      components = {
        microsoft-translator = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-media
            hsPkgs.bytestring
            hsPkgs.http-api-data
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.xml
            hsPkgs.safe
          ];
        };
      };
    }