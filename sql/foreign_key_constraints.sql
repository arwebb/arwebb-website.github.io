-- foreign keys
-- Reference: campus_campus (table: campus)
ALTER TABLE dbo.campus ADD CONSTRAINT campus_campus
    FOREIGN KEY (paired_id)
    REFERENCES dbo.campus (id);

-- Reference: campus_county (table: campus)
ALTER TABLE dbo.campus ADD CONSTRAINT campus_county
    FOREIGN KEY (county_id)
    REFERENCES dbo.county (id);

-- Reference: campus_entity (table: campus)
ALTER TABLE dbo.campus ADD CONSTRAINT campus_entity
    FOREIGN KEY (id)
    REFERENCES dbo.entity (id);

-- Reference: campus_grades_campus (table: campus_grades)
ALTER TABLE dbo.campus_grades ADD CONSTRAINT campus_grades_campus
    FOREIGN KEY (campus_id)
    REFERENCES dbo.campus (id);

-- Reference: campus_grades_grade (table: campus_grades)
ALTER TABLE dbo.campus_grades ADD CONSTRAINT campus_grades_grade
    FOREIGN KEY (grade_id)
    REFERENCES dbo.grade (id);

-- Reference: campus_translation_campus (table: campus_translation)
ALTER TABLE dbo.campus_translation ADD CONSTRAINT campus_translation_campus
    FOREIGN KEY (non_translated_id)
    REFERENCES dbo.campus (id);

-- Reference: campus_translation_language (table: campus_translation)
ALTER TABLE dbo.campus_translation ADD CONSTRAINT campus_translation_language
    FOREIGN KEY (language_id)
    REFERENCES dbo.language (id);

-- Reference: datapoint_entity (table: datapoint)
ALTER TABLE dbo.datapoint ADD CONSTRAINT datapoint_entity
    FOREIGN KEY (entity_id)
    REFERENCES dbo.entity (id);

-- Reference: datapoint_translation_datapoint (table: datapoint_translation)
ALTER TABLE dbo.datapoint_translation ADD CONSTRAINT datapoint_translation_datapoint
    FOREIGN KEY (non_translated_id)
    REFERENCES dbo.datapoint (id);

-- Reference: datapoint_translation_language (table: datapoint_translation)
ALTER TABLE dbo.datapoint_translation ADD CONSTRAINT datapoint_translation_language
    FOREIGN KEY (language_id)
    REFERENCES dbo.language (id);

-- Reference: district_campus (table: campus)
ALTER TABLE dbo.campus ADD CONSTRAINT district_campus
    FOREIGN KEY (district_id)
    REFERENCES dbo.district (id);

-- Reference: district_county (table: district)
ALTER TABLE dbo.district ADD CONSTRAINT district_county
    FOREIGN KEY (county_id)
    REFERENCES dbo.county (id);

-- Reference: district_entity (table: district)
ALTER TABLE dbo.district ADD CONSTRAINT district_entity
    FOREIGN KEY (id)
    REFERENCES dbo.entity (id);

-- Reference: entity_modal_content_entity (table: entity_modal_content)
ALTER TABLE dbo.entity_modal_content ADD CONSTRAINT entity_modal_content_entity
    FOREIGN KEY (entity_id)
    REFERENCES dbo.entity (id);

-- Reference: entity_modal_content_modal_content (table: entity_modal_content)
ALTER TABLE dbo.entity_modal_content ADD CONSTRAINT entity_modal_content_modal_content
    FOREIGN KEY (modal_content_id)
    REFERENCES dbo.modal_content (id);

-- Reference: grade_translation_grade (table: grade_translation)
ALTER TABLE dbo.grade_translation ADD CONSTRAINT grade_translation_grade
    FOREIGN KEY (non_translated_id)
    REFERENCES dbo.grade (id);

-- Reference: grade_translation_language (table: grade_translation)
ALTER TABLE dbo.grade_translation ADD CONSTRAINT grade_translation_language
    FOREIGN KEY (language_id)
    REFERENCES dbo.language (id);

-- Reference: modal_content_translation_language (table: modal_content_translation)
ALTER TABLE modal_content_translation ADD CONSTRAINT modal_content_translation_language
    FOREIGN KEY (language_id)
    REFERENCES dbo.language (id);

-- Reference: modal_content_translation_modal_content (table: modal_content_translation)
ALTER TABLE modal_content_translation ADD CONSTRAINT modal_content_translation_modal_content
    FOREIGN KEY (non_translated_id)
    REFERENCES modal_content (id);

-- Reference: region_district (table: district)
ALTER TABLE dbo.district ADD CONSTRAINT region_district
    FOREIGN KEY (region_id)
    REFERENCES dbo.region (id);

-- Reference: region_entity (table: region)
ALTER TABLE dbo.region ADD CONSTRAINT region_entity
    FOREIGN KEY (id)
    REFERENCES dbo.entity (id);

-- Reference: region_state (table: region)
ALTER TABLE dbo.region ADD CONSTRAINT region_state
    FOREIGN KEY (state_id)
    REFERENCES dbo.state (id);

-- Reference: state_entity (table: state)
ALTER TABLE dbo.state ADD CONSTRAINT state_entity
    FOREIGN KEY (id)
    REFERENCES dbo.entity (id);