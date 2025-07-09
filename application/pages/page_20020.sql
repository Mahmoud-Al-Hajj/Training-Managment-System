prompt --application/pages/page_20020
begin
--   Manifest
--     PAGE: 20020
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>38562329304957560273
,p_default_application_id=>109167
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEVELOPMAH00J'
);
wwv_flow_imp_page.create_page(
 p_id=>20020
,p_name=>'Email Reporting'
,p_alias=>'EMAIL-REPORTING'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Reporting'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(58617823586668865393)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'<p>This report shows all email queued to be sent and those already sent.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58617823830731865397)
,p_plug_name=>'Email Reporting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.QUEUED'') mail_status,',
'       id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       mail_send_count,',
'       mail_send_error,',
'       last_updated_by,',
'       last_updated_on,',
'       mail_message_created, ',
'       lower(mail_message_created_by) message_created_by,',
'       app_id,',
'       dbms_lob.getlength(mail_body) text_body_size,',
'       dbms_lob.getlength(mail_body_html) html_body_size,',
'       null send_begin,',
'       null send_end,',
'       null mail_attachment_count,',
'       null mail_attachment_size',
'  from apex_mail_queue',
'union',
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.SENT'') mail_status,',
'       mail_id id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       null mail_send_count,',
'       mail_send_error,',
'       null last_updated_by,',
'       last_updated_on,',
'       mail_message_created,',
'       null message_created_by,',
'       app_id,',
'       mail_body_size text_body_size,',
'       mail_body_html_size html_body_size,',
'       mail_message_send_begin send_begin,',
'       mail_message_send_end   send_end,',
'       mail_attachment_count,',
'       mail_attachment_size',
'  from apex_mail_log'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Email Reporting'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(58617824319640865397)
,p_name=>'Email Reporting'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MAH06.HAJJ@GMAIL.COM'
,p_internal_uid=>58617824319640865397
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617825016218865401)
,p_db_column_name=>'MAIL_STATUS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617825487924865401)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617825803993865402)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617826243471865402)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617826655671865402)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reply To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617827020101865403)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617827497122865403)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'CC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617827878054865404)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'BCC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617828251688865404)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Send Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617828706649865405)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Send Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617829151306865405)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617829503464865405)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617829918128865406)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617830336733865407)
,p_db_column_name=>'MESSAGE_CREATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617830752149865407)
,p_db_column_name=>'APP_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617831146449865407)
,p_db_column_name=>'TEXT_BODY_SIZE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Text Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617831501012865408)
,p_db_column_name=>'HTML_BODY_SIZE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'HTML Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617831907915865408)
,p_db_column_name=>'SEND_BEGIN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Send Begin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617832360435865409)
,p_db_column_name=>'SEND_END'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Send End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617832782911865409)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Attachment Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(58617833161360865410)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Attachment Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(58617840134123865418)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'586178402'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_STATUS:MAIL_TO:MAIL_FROM:MAIL_SUBJ:MAIL_SEND_COUNT:MAIL_SEND_ERROR:MAIL_MESSAGE_CREATED:MESSAGE_CREATED_BY:APP_ID:HTML_BODY_SIZE'
,p_sort_column_1=>'MAIL_MESSAGE_CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58617841030522865420)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(58617823830731865397)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/
