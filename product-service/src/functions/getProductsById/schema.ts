export default {
  "type": "object",
  "properties": {
    "count": { "type" : "number"},
    "id": { "type" : "string"},
    "description": { "type" : "string"},
    "title": { "type" : "string"},
    "price": { "type" : "number"}
  },
  "required": ['id']
} as const;
