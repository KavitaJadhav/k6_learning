import execution from 'k6/execution';

export const setTags = () => {
    execution.vu.tags.environment = __ENV.ENVIRONMENT;
};