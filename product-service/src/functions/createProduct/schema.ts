export default {
  type: 'object',
  properties: {
    title: { type: 'string' },
    description: { type: 'string' },
    price: { type: 'number' },
    count: { type: 'integer' },
  },
  required: ['title', 'description', 'price', 'count'],
} as const;
