-- Analyze how length of stay impacts mental health in international students
SELECT stay,
    COUNT(*) AS count_int,                       -- Number of international students per stay duration
    ROUND(AVG(todep), 2) AS average_phq,         -- Avg PHQ-9 (depression) score
    ROUND(AVG(tosc), 2) AS average_scs,          -- Avg SCS (self-compassion) score
    ROUND(AVG(toas), 2) AS average_as            -- Avg ASISS (acculturative stress) score
FROM students
WHERE inter_dom = 'Inter'                        -- Filter only international students
GROUP BY stay                                    -- Group by length of stay
ORDER BY stay DESC                               -- Sort by longest stays first
LIMIT 9;                                         -- Limit to top 9 stay durations
