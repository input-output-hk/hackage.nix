{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "webpage"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Organized and simple web page scaffold for blaze and lucid";
      description = "This is a general organization scheme for web pages, implemented for Lucid,\nand adapted for Blaze-html.\n\nIt's as easy as 1-2-3:\n\n>  import Web.Page.Lucid\n>\n>  λ> renderText \$ template mempty \"some content\"\n>\n>  ↪ \"<!DOCTYPE HTML><html><head><title></title><link href\n>    rel=\"icon\"></head><body>some content</body></html>\"\n\noverload the particular areas with record syntax and stuff:\n\n>  λ> let page = WebPage\n>                  \"foo\"\n>                  mempty\n>                  mempty\n>                  mempty\n>                  mempty\n>                  mempty\n>                  mempty\n>                  (script_ [src_ \"jquery.js\"] \"\")\n>\n>\n>  λ> template page \"some content\"\n>\n>  ↪ \"<!DOCTYPE HTML><html><head><title>foo</title><link href\n>    rel=\\\"icon\\\"></head><body>some content<script\n>    src=\\\"jquery.js\\\"></script></body></html>\"\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lucid)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
          ];
        };
      };
    }