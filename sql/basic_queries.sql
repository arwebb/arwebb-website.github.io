-- GET ALL GRADES FOR A SCHOOL/LANGUAGE
SELECT gt.name, gt.short_name
FROM school s, school_grades sg, grade g, grade_translation gt, language l
WHERE s.id = 4
    AND s.id = sg.school_id
    AND sg.grade_id = g.id
    AND g.id = gt.non_translated_id
    AND gt.language_id = l.id
    AND l.short_name = 'es'
ORDER BY sg.[order]
FOR JSON PATH;

-- GET ALL GRADES FOR SCHOOL, ALL LANGUAGES
SELECT gt.name, gt.short_name, l.short_name, l.name
FROM school s, school_grades sg, grade g, grade_translation gt, language l
WHERE s.id = 4
    AND s.id = sg.school_id
    AND sg.grade_id = g.id
    AND g.id = gt.non_translated_id
    AND gt.language_id = l.id
ORDER BY gt.language_id, sg.[order];

-- GET SCHOOL INFO, INCLUDING GRADES
SELECT e.name, e.slug, s.email_address, s.phone_number, s.principal_name, s.school_type, s.website, s.S_STREET_ADDR AS "address.street", s.S_CITY AS "address.city", s.S_STATE AS "address.state", s.S_ZIP5 AS "address.zip_code", s.district_id, 
    (SELECT gt.name, gt.short_name
     FROM school s, school_grades sg, grade g, grade_translation gt, language l
     WHERE s.id = 4
         AND s.id = sg.school_id
         AND sg.grade_id = g.id
         AND g.id = gt.non_translated_id
         AND gt.language_id = l.id
         AND l.short_name = 'en'
     ORDER BY sg.[order]
     FOR JSON PATH) AS grades
FROM entity e, school s
WHERE e.id = '4'
    AND e.id = s.id
FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;
    
-- GET ALL SCHOOLS
SELECT e.name, s.school_type, s.S_STREET_ADDR AS "address.street", s.S_CITY AS "address.city", s.S_STATE AS "address.state", s.S_ZIP5 AS "address.zip_code", s.district_id
FROM entity e, school s
WHERE e.id = s.id
FOR JSON PATH;

-- GET DISTRICT INFO
SELECT e.name, e.slug, d.email_address, d.phone_number, d.superintendent_name, d.website, d.D_STREET_ADDR AS "address.street", d.D_CITY AS "address.city", d.D_STATE AS "address.state", d.D_ZIP5 AS "address.zip_code", d.region_id
FROM entity e, district d
WHERE e.id = '2'
    AND e.id = d.id
FOR JSON PATH, WITHOUT_ARRAY_WRAPPER;

-- GET ALL DATAPOINTS FOR A SCHOOL/LANGUAGE
SELECT d.entity_id, d.year, d.domain_id, d.metric_id, d.value, dt.display_text
FROM datapoint as d
LEFT JOIN datapoint_translation AS dt ON d.id = dt.non_translated_id
LEFT JOIN language AS l ON dt.language_id = l.id AND l.short_name = 'es'
WHERE d.entity_id = 3 AND year = '2017'
