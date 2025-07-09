prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 109167
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(58141746759538649620)
,p_theme_id=>42
,p_name=>'mahjooj'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-pillar--teal rw-mode-header--dark rw-mode-nav--dark rw-mode-body-header--light rw-mode-body--light rw-layout--fixed t-PageBody--scrollTitle'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-pillar--teal","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-mode-header--dark","rw-mode-nav--dark","rw-mode-body-header--light","rw-mode-body--light","rw-layout--fixed t-PageBody--scrollTitl'
||'e"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#58141746759538649620.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(59719009982306372692)
,p_theme_id=>42
,p_name=>'TEST'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-pillar--teal rw-mode-header--dark rw-mode-nav--dark rw-mode-body-header--light rw-mode-body--light rw-layout--fixed t-PageBody--scrollTitle'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-pillar--teal","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-mode-header--dark","rw-mode-nav--dark","rw-mode-body-header--light","rw-mode-body--light","rw-layout--fixed t-PageBody--scrollTitl'
||'e"],"vars":{},"customCSS":"/* ===== CORE THEME COLORS ===== */\n:root {\n  /* Primary Color Palette */\n  --primary-color: #2c3e50;       /* Classic navy blue */\n  --secondary-color: #3498db;     /* Bright blue */\n  --accent-color: #e74c3c;        '
||'/* Classic red */\n  --success-color: #27ae60;       /* Emerald green */\n  --warning-color: #f39c12;       /* Golden yellow */\n  --danger-color: #c0392b;        /* Deep red */\n  \n  /* Neutral Colors */\n  --light-gray: #ecf0f1;          /* Very l'
||'ight gray */\n  --medium-gray: #bdc3c7;         /* Medium gray */\n  --dark-gray: #7f8c8d;          /* Dark gray */\n  --text-color: #2c3e50;         /* Primary text color */\n  --text-light: #95a5a6;         /* Secondary text */\n  \n  /* Component '
||'Colors */\n  --border-color: #dfe6e9;       /* Light borders */\n  --hover-color: #f8f9fa;        /* Row hover */\n  --focus-color: rgba(52, 152, 219, 0.2); /* Focus ring */\n}\n\n/* ===== GLOBAL STYLES ===== */\n.t-Body {\n  font-family: ''Segoe UI'','
||' Roboto, ''Helvetica Neue'', Arial, sans-serif;\n  color: var(--text-color);\n  background-color: #f5f7fa;\n  line-height: 1.6;\n}\n\n/* ===== NAVIGATION ===== */\n.t-NavigationBar {\n  background-color: var(--primary-color);\n  box-shadow: 0 2px 4px r'
||'gba(0,0,0,0.1);\n}\n\n.t-NavigationBar-item.is-active,\n.t-NavigationBar-item:hover {\n  background-color: rgba(255,255,255,0.1);\n  border-left: 3px solid var(--secondary-color);\n}\n\n/* ===== BUTTONS ===== */\n.t-Button {\n  border-radius: 4px;\n '
||' font-weight: 500;\n  transition: all 0.2s ease;\n  padding: 8px 16px;\n}\n\n.t-Button--primary {\n  background-color: var(--secondary-color);\n  border: 1px solid var(--secondary-color);\n  color: white;\n}\n\n.t-Button--primary:hover {\n  backgroun'
||'d-color: #2980b9;\n  transform: translateY(-1px);\n  box-shadow: 0 2px 4px rgba(0,0,0,0.1);\n}\n\n.t-Button--danger {\n  background-color: var(--danger-color);\n  border: 1px solid var(--danger-color);\n}\n\n/* ===== CARDS & REGIONS ===== */\n.t-Regi'
||'on {\n  border-radius: 6px;\n  border: 1px solid var(--border-color);\n  box-shadow: 0 1px 3px rgba(0,0,0,0.05);\n  background-color: white;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#59719009982306372692.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
