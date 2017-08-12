private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: i44_merderet_v2"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 if(tolower(_worldName) == "i44_merderet_v2") then {
[ALIVE_mapBounds, worldName, 5000] call ALIVE_fnc_hashSet;
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["ww2\objects_m\misc\i44_vine_fence_m\i44_vine_fence.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_cobble1.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_schmutz3.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_garden1.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_cobble3.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_cobble6.p3d","ca\data\library\obstacle_saddle.p3d","ww2\objects_m\misc\i44_objects_map_m\i44_hrt1.p3d","ca\structures\rail\rail_platform\rail_platform_segment.p3d","ca\misc\fort_envelopebig.p3d","ca\data\krater.p3d","ww2\objects_m\misc\i44_objects_beach_m\i44_hedgehog.p3d","ww2\objects_m\misc\i44_objects_misc_m\i44_bloc_barre.p3d","ww2\objects_m\misc\i44_objects_misc_m\i44_bc_beton.p3d","ww2\objects_m\misc\i44_vine_fence_m\i44_vine_fence_half.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_gravecross02.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_grave02.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_gravedirt.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_gravecross.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_grave01.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_graveobelisk02.p3d","ww2\objects_m\structures\i44_buildings_m\walls\i44_graveobelisk03.p3d","ww2\objects_m\structures\i44_buildings_m\ruins\i44_tall_ruins.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_old_bridge.p3d","ca\structures\rail\rail_platform\rail_platform_start.p3d","ca\roads2\dam\dam_barrier_40\dam_barrier_40.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["ca\structures\mil\mil_guardhouse.p3d","ca\structures\mil\mil_barracks_i.p3d","ca\misc3\fortified_nest_small.p3d","ww2\objects_m\misc\i44_objects_misc_m\i44_guard_post_1.p3d","ca\structures\mil\mil_barracks.p3d","ca\structures\mil\mil_barracks_l.p3d"];
ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + ["ca\structures\mil\mil_barracks_i.p3d"];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["ca\structures\mil\mil_barracks_i.p3d","ca\structures\mil\mil_barracks.p3d","ca\structures\mil\mil_barracks_l.p3d"];
ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + ["ca\structures\mil\mil_barracks_i.p3d","ca\structures\mil\mil_barracks.p3d"];
ALIVE_airBuildingTypes = ALIVE_airBuildingTypes + [];
ALIVE_militaryAirBuildingTypes = ALIVE_militaryAirBuildingTypes + [];
ALIVE_civilianAirBuildingTypes = ALIVE_civilianAirBuildingTypes + [];
ALIVE_heliBuildingTypes = ALIVE_heliBuildingTypes + [];
ALIVE_militaryHeliBuildingTypes = ALIVE_militaryHeliBuildingTypes + [];
ALIVE_civilianHeliBuildingTypes = ALIVE_civilianHeliBuildingTypes + [];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["ca\buildings\hruzdum.p3d","ca\buildings\sara_domek_kovarna.p3d","ca\buildings\statek_hl_bud.p3d","ca\buildings\deutshe_mini.p3d","ca\buildings\sara_domek_zluty.p3d","ca\buildings\sara_domek_sedy.p3d","ca\buildings\sara_domek_ruina.p3d","ca\buildings\dum_rasovna.p3d","ca\structures\house\housev\housev_1i3.p3d","ca\structures\house\housev\housev_2l.p3d","ca\buildings2\ind_workshop01\ind_workshop01_01.p3d","ca\buildings\dum_mesto_in.p3d","ca\buildings\cihlovej_dum.p3d","ca\buildings\cihlovej_dum_in.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_building_part1.p3d","ca\buildings2\a_pub\a_pub_01.p3d"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["ca\buildings\dum_mesto_in.p3d","ca\structures\house\a_stationhouse\a_stationhouse.p3d","ca\buildings\cihlovej_dum.p3d","ca\buildings2\a_pub\a_pub_01.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["ca\buildings\hruzdum.p3d","ca\buildings\sara_domek_podhradi_1.p3d","ca\buildings2\shed_small\shed_w01.p3d","ca\buildings\sara_domek_kovarna.p3d","ca\buildings\statek_hl_bud.p3d","ca\buildings\deutshe_mini.p3d","ca\buildings\sara_domek_zluty.p3d","ca\buildings\statek_kulna.p3d","ca\buildings\sara_domek_sedy.p3d","ca\buildings\sara_domek_ruina.p3d","ca\buildings\dum_rasovna.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_schmutz2.p3d","ca\buildings\dum01.p3d","ca\structures\house\housev\housev_1i4.p3d","ca\structures\house\housev\housev_1i3.p3d","ca\structures\house\housev\housev_2l.p3d","ca\structures\house\housev\housev_3i1.p3d","ca\structures\house\housev\housev_3i3.p3d","ca\structures\house\housev\housev_3i4.p3d","ca\structures\house\housev\housev_3i2.p3d","ca\structures\house\housev\housev_1i2.p3d","ca\structures\house\housev\housev_1i1.p3d","ca\structures\house\housev\housev_2t1.p3d","ca\buildings2\ind_workshop01\ind_workshop01_l.p3d","ca\buildings2\ind_workshop01\ind_workshop01_04.p3d","ca\buildings2\ind_workshop01\ind_workshop01_01.p3d","ca\buildings2\ind_workshop01\ind_workshop01_03.p3d","ca\buildings2\shed_small\shed_m01.p3d","ca\buildings2\ind_workshop01\ind_workshop01_02.p3d","ca\structures\ind_sawmill\ind_sawmill.p3d","ca\buildings\dum_mesto_in.p3d","ca\buildings\deutshe.p3d","ww2\objects_m\misc\i44_ttw1_objects_m\i44_schmutz1.p3d","ca\structures\ind\ind_stack_big.p3d","ca\structures\ind_quarry\ind_quarry.p3d","ca\buildings2\ind_cementworks\ind_dopravnik\d_mlyn_vys.p3d","ca\structures\house\a_stationhouse\a_stationhouse.p3d","ca\buildings2\ind_cementworks\ind_malykomin\ind_malykomin.p3d","ca\buildings2\shed_small\shed_w03.p3d","ca\buildings2\shed_small\shed_w02.p3d","ca\buildings\bouda1.p3d","ca\buildings\cihlovej_dum.p3d","ca\buildings\cihlovej_dum_in.p3d","ca\buildings2\shed_small\shed_m02.p3d","ca\structures\ind_quarry\ind_hammermill.p3d","ca\buildings\sara_stodola3.p3d","ca\buildings\sara_stodola.p3d","ca\buildings2\shed_small\shed_m03.p3d","ww2\objects_m\structures\i44_war_buildings_m\i44_ardennenhouse_3_ruin.p3d","ca\structures\house\housev2\housev2_05.p3d","ca\buildings2\houseblocks\houseblock_b\houseblock_b2.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_building_part4.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_tower_base.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_building_part2.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_building_part3.p3d","ww2\objects_m\structures\i44_churches_m\i44_church_building_part1.p3d","ww2\objects_m\structures\i44_war_buildings_m\i44_ardennenhouse_1.p3d","ca\structures\house\housev2\housev2_04_interier.p3d","ca\buildings2\a_pub\a_pub_01.p3d","ca\structures\house\housev2\housev2_03b.p3d","ca\buildings\dum_mesto2.p3d","ca\buildings\sara_domek_sedy_bez.p3d"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + [];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + [];
ALIVE_civilianMarineBuildingTypes = ALIVE_civilianMarineBuildingTypes + ["ca\structures\nav_pier\nav_pier_c2.p3d","ca\structures\nav_boathouse\nav_boathouse_piert.p3d","ca\structures\nav_boathouse\nav_boathouse_pierl.p3d","ca\structures\nav_pier\nav_pier_c2_end.p3d","ca\structures\nav_boathouse\nav_boathouse_pierr.p3d"];
ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + ["ca\structures\rail\rail_station_big\rail_station_big.p3d","ca\buildings2\rail_house_01\rail_house_01.p3d","ca\structures\rail\railway\rails_bridge_40.p3d"];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + [];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + [];
};
