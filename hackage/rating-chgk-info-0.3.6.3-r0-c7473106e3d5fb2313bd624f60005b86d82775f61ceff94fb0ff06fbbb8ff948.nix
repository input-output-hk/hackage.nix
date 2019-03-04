{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "rating-chgk-info"; version = "0.3.6.3"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Mansur Ziiatdinov";
      maintainer = "gltronred@gmail.com";
      author = "Mansur Ziiatdinov";
      homepage = "";
      url = "";
      synopsis = "Client for rating.chgk.info API and CSV tables (documentation in Russian)";
      description = "Клиент для REST API сайта рейтинга (rating.chgk.info) и функциональности, которой нет в REST API, но которая доступна через экспорт CSV.\nТакже содержит REST-сервер для дополнительной функциональности, доступной через CSV\n\nДокументация по типам параметров и возвращаемых значений находится в \"RatingChgkInfo.Types\"\n\nДокументация по функциям для работы с REST API находится в \"RatingChgkInfo.Api\"\n\nДокументация по функциям для работы с CSV находится в \"RatingChgkInfo.NoApi\"\n\nПримеры работы с библиотекой находятся в папке examples\n\nВ следующем большом релизе планируется заменить в части типов для REST API списки значений на множества (Set), например, для составов команд и т.п. Это должно повысить безопасность библиотеки, и не должно ухудшить возможности работы.\n\nПример использования:\n\n>\n> -- Наша библиотека\n> import RatingChgkInfo\n> -- И немного стандартных библиотек\n> import Control.Monad (forM, void)\n> import Control.Monad.IO.Class (liftIO)\n> import Data.List (nub)\n> import Data.Time (LocalTime(..),fromGregorian,midnight)\n> -- Точка входа в приложение\n> main :: IO ()\n> main = void \$ runRatingApi \$ do\n>   -- Получим список всех очных турниров\n>   --\n>   -- Функция tournaments получает одну страницу турниров, а функция getAllItems\n>   -- оборачивает подобные функции, чтобы пройтись по всем страницам.\n>   -- Далее из этого списка выбираются очные турниры 2018 года\n>   let s2018 = LocalTime (fromGregorian 2018 1 1) midnight\n>       e2018 = LocalTime (fromGregorian 2019 1 1) midnight\n>   tourns <- filter (\\t -> trs_typeName t == Casual &&\n>                           trs_dateStart t >= s2018 &&\n>                           trs_dateEnd t <= e2018) <\$>\n>             getAllItems tournaments\n>   -- Проходимся по полученному списку\n>   ts <- forM tourns \$ \\t -> do\n>     let ident = trs_idtournament t\n>     -- Получаем результаты турнира\n>     res <- tournamentResults ident\n>     -- Возвращаем названия команд-участниц\n>     pure (map tr_current_name res)\n>   -- Выводим, сколько уникальных названий было по всем турнирам\n>   liftIO (print (length (nub ts)))";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-noprelude)
          (hsPkgs.relude)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.iconv)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.optparse-generic)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-js)
          (hsPkgs.servant-server)
          (hsPkgs.servant-swagger)
          (hsPkgs.swagger2)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.wreq)
          ];
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.rating-chgk-info)
            (hsPkgs.relude)
            (hsPkgs.time)
            ];
          };
        "example2" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.rating-chgk-info)
            (hsPkgs.relude)
            (hsPkgs.text)
            ];
          };
        "extra-rating-api" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.rating-chgk-info)
            (hsPkgs.relude)
            ];
          };
        };
      tests = {
        "rating-chgk-info-test" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.rating-chgk-info)
            (hsPkgs.relude)
            ];
          };
        };
      benchmarks = {
        "rating-chgk-info-benchmark" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.gauge)
            (hsPkgs.rating-chgk-info)
            (hsPkgs.relude)
            ];
          };
        };
      };
    }