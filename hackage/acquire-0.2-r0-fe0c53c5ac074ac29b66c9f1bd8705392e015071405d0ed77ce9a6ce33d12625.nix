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
        name = "acquire";
        version = "0.2";
      };
      license = "MIT";
      copyright = "(c) 2013 Gabriel Gonzalez, 2018 Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/acquire";
      url = "";
      synopsis = "Abstraction over management of resources";
      description = "An implementation of the abstraction suggested in\n<http://www.haskellforall.com/2013/06/the-resource-applicative.html a blog-post by Gabriel Gonzalez>.";
      buildType = "Simple";
    };
    components = {
      "acquire" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }