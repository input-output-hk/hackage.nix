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
        name = "potoki";
        version = "2.1.3";
      };
      license = "MIT";
      copyright = "(c) 2017, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/potoki";
      url = "";
      synopsis = "Simple streaming in IO";
      description = "This library provides a new simpler approach to the IO-streaming problem.\n\nIn difference to libraries like \\\"pipes\\\", \\\"conduit\\\", \\\"streaming\\\",\nthis library is specialised to streaming in the IO monad,\nwhich greatly simplifies the abstractions that it provides.\nThis simplification is motivated by the fact that the majority of streaming\ntasks are performed in IO anyway.\n\nAlso, unlike the mentioned libraries,\n\\\"potoki\\\" API doesn't treat streaming as a side operation in its abstractions,\nwhich allows it to express the composition of streams using the standard\ntypeclass instances, thus simplifying the API even further.\n\nNaturally, being simpler limits the application area of this library.\nThus it is not capable of transforming custom context monads and etc.\nIt is a tradeoff, but, as we expect, the user will rarely be affected by it.\n\nAnother benefit of being specialized to IO is the ability to optimize for performance better.\nIt must however be mentioned that this is only theoretical and no benchmarks have yet been performed.\n\nIn some of the mentioned regards \\\"potoki\\\" is similar to the \\\"io-streams\\\" library.\nHowever, unlike that library it approaches composition with the standard typeclass instances.\nAlso, in difference to \\\"io-streams\\\", \\\"potoki\\\" doesn't use exceptions for control-flow.\nIn fact, \\\"potoki\\\" doesn't use exceptions whatsoever,\ninstead it makes failures explicit, using the standard @Either@ type.\n\n\\\"potoki\\\" comes with automated resource-management (acquisition and clean-up),\nconcurrency and buffering features.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.potoki-core)
        ];
      };
    };
  }