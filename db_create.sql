DROP TABLE players CASCADE;
DROP TABLE player_skill CASCADE;
DROP TABLE country CASCADE;
DROP TABLE league CASCADE;
DROP TABLE player_perf CASCADE;

CREATE TABLE players (
    "sofifa_id" int PRIMARY KEY NOT NULL,
    "player_url" varchar   NOT NULL,
    "short_name" varchar   NOT NULL,
    "long_name" varchar   NOT NULL,
    "age" int   NOT NULL,
    "dob" date   NOT NULL,
    "height_cm" int   NOT NULL,
    "weight_kg" int   NOT NULL,
    "nationality" varchar   NOT NULL,
    "club" varchar   NOT NULL,
    "overall" int   NOT NULL,
    "potential" int   NOT NULL,
    "value_eur" int   NOT NULL,
    "wage_eur" int   NOT NULL,
    "player_positions" varchar   NOT NULL,
    "preferred_foot" varchar   NOT NULL
);

CREATE TABLE player_skill (
    "sofifa_id" int PRIMARY KEY NOT NULL,
    "long_name" varchar,
    "international_reputation" int   NOT NULL,
    "weak_foot" int   NOT NULL,
    "skill_moves" int   NOT NULL,
    "work_rate" varchar   NOT NULL,
    "body_type" varchar   NOT NULL,
    "real_face" varchar   NOT NULL,
    "release_clause_eur" int,
    "player_tags" varchar,
    "team_position" varchar,
    "team_jersey_number" int,
    "loaned_from" varchar,
    "joined" date,
    "contract_valid_until" int,
    "nation_position" varchar,
    "nation_jersey_number" int,
    "pace" int,
    "shooting" int,
    "passing" int,
    "dribbling" int,
    "defending" int,
    "physic" int,
    "gk_diving" int,
    "gk_handling" int,
    "gk_kicking" int,
    "gk_reflexes" int,
    "gk_speed" int,
    "gk_positioning" int,
    "player_traits" varchar,
    "attacking_crossing" int,
    "attacking_finishing" int,
    "attacking_heading_accuracy" int,
    "attacking_short_passing" int,
    "attacking_volleys" int,
    "skill_dribbling" int,
    "skill_curve" int,
    "skill_fk_accuracy" int,
    "skill_long_passing" int,
    "skill_ball_control" int,
    "movement_acceleration" int,
    "movement_sprint_speed" int,
    "movement_agility" int,
    "movement_reactions" int,
    "movement_balance" int,
    "power_shot_power" int,
    "power_jumping" int,
    "power_stamina" int,
    "power_strength" int,
    "power_long_shots" int,
    "mentality_aggression" int,
    "mentality_interceptions" int,
    "mentality_positioning" int,
    "mentality_vision" int,
    "mentality_penalties" int,
    "mentality_composure" int,
    "defending_marking" int,
    "defending_standing_tackle" int,
    "defending_sliding_tackle" int,
    "goalkeeping_diving" int,
    "goalkeeping_handling" int,
    "goalkeeping_kicking" int,
    "goalkeeping_positioning" int,
    "goalkeeping_reflexes" int
);

CREATE TABLE country (
    "country_id" SERIAL PRIMARY KEY NOT NULL,
    "country_name" varchar   NOT NULL

);

CREATE TABLE league (
    "league_id" int PRIMARY KEY  NOT NULL,
    "country_id" int   NOT NULL,
    "league_name" varchar   NOT NULL,
    "club_name" varchar   NOT NULL
);

CREATE TABLE player_perf (
    "long_name" varchar PRIMARY KEY NOT NULL,
    "sofifa_id" int,
    "ptime_matches_played" int,
    "ptime_starts" int,
    "ptime_min" int,
    "perf_goals" int,
    "perf_assists" int,
    "perf_pks" int,
    "perf_pkatt" int,
    "perf_crd_y" int,
    "perf_crd_r" int,
    "per_90_goals" int,
    "per_90_assts" int,
    "per_90_ga" int,
    "per_90_g_pk" int,
    "per_90_g_a_pk" int,
    "exp_goals" int,
    "exp_np_exp_goals" int,
    "exp_assists" int,
    "per_90_exp_goals" int,
    "per_90_exp_assists" int,
    "per_90_exp_goals_exp_assists" int,
    "per_90_exp_np_exp_goals" int,
    "per_90_exp_np_exp_goals_assists" int
);

